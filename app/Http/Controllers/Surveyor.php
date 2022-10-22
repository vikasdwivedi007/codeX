<?php

namespace App\Http\Controllers;
require app_path('Helpers/helper.php');
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Crypt;
use Carbon\Carbon;
use Session;
use App\Models\AlbumImages;
use App\Models\ReportAlbums;
use Cache;
use DateTime;

use App\Models\Common_model as Common_model;


class Surveyor extends Controller
{ 
   
    private $Common_model; 
    public function __construct(Common_model $Common_model)
    {
        $this->Common_model = $Common_model; 
    }
    public function index()
    {
      $data['title'] = 'Dashboard';
      return view('surveyor-admin/dashboard',$data);
    }
    
    public function serveyorBankAccounts()
    {
        $data['list']    = $this->Common_model->getData('cdx_serveyor_bankaccounts')->orderBy('id', 'DESC')->get();
        $data['title']    = 'Bank Account List';
        return view('surveyor-admin/bank_account/bankAccounts',$data);
    } 

  

    public function addBankAccount()
    {
        $data['BankList']    = $this->Common_model->getData('bank_master')->where('status', 1)->get();
        $data['title']    = 'Add Bank Account';
        return view('surveyor-admin/bank_account/addbankAccount',$data);
    }
   
    

    public function storeAccountDetails(Request $request) 
    {  
 
       $validatedData = $request->validate([
          'bank_name' => 'required',
          'account_holder_name' =>'required',
          'account_no'=> 'required',
          'ifsc' => 'required',
          'micr' => 'required',
          'address' => 'required',
          'phone_no' => 'required',
          'bank_email' => 'required',
          'contact_person' => 'required',
          'contact_person_mobile' => 'required',
          'contact_person_designation' => 'required'
        ]);

      $data  = [
        'surveyor_id'=>session('user_id'),
        'bank_name'=>$request->bank_name,
        'account_holder_name'=>$request->account_holder_name,
        'ac_no'=>$request->account_no,
        'ifsc'=>$request->ifsc,
        'micr'=>$request->micr,
        'address' => $request->address,
        'phone_no' => $request->phone_no,
        'bank_email' => $request->bank_email,
        'contact_person' => $request->contact_person,
        'contact_person_mobile' => $request->contact_person_mobile,
        'contact_person_designation' => $request->contact_person_designation,
        'status'=>$request->status
      ];

      $accpunt_id  = $this->Common_model->saveDate('cdx_serveyor_bankaccounts',$data);
      Session::flash('msg', "Account number has been successfully save");
      
     return redirect('surveyor/serveyorBankAccounts');
    }

  public function editServeyorBankAccountsDetails(Request $request)
  { 
      $id = Crypt::decrypt($request->id);
      $data['BankList']    = $this->Common_model->getData('bank_master')->where('status', 1)->get();
      $SingleData = DB::table('cdx_serveyor_bankaccounts')->get()->where('id',"=", $id)->first();
      $data['title']    = 'Update Bank Account';

      return view('surveyor-admin/bank_account/editbankAccount',$data,['getOne' => $SingleData]);
    
  }

public function updateBnkDetails(Request $request)
{ 
   $id = $request->bank_ID;

  $validatedData = $request->validate([
          'bank_name' => 'required',
          'account_no'=> 'required',
          'account_holder_name' =>'required',
          'ifsc' => 'required',
          'micr' => 'required',
          'address' => 'required',
          'phone_no' => 'required',
          'bank_email' => 'required',
          'contact_person' => 'required',
          'contact_person_mobile' => 'required',
          'contact_person_designation' => 'required'
        ]);
  $updateArr  = [
        'surveyor_id'=>session('user_id'),
        'bank_name'=>$request->bank_name,
        'account_holder_name'=>$request->account_holder_name,
        'ac_no'=>$request->account_no,
        'ifsc'=>$request->ifsc,
        'micr'=>$request->micr,
        'address' => $request->address,
        'phone_no' => $request->phone_no,
        'bank_email' => $request->bank_email,
        'contact_person' => $request->contact_person,
        'contact_person_mobile' => $request->contact_person_mobile,
        'contact_person_designation' => $request->contact_person_designation,
        'status'=>$request->status
      ]; 
    $update = $this->Common_model->updateDate('cdx_serveyor_bankaccounts', array('id'=>$id), $updateArr);
        $success = Session::flash('msg', "Account number has been successfully save");
       return redirect('surveyor/serveyorBankAccounts');

}



public function serveyorUrlGenerated()
    {
        $data['list']     = $this->Common_model->getData('cdx_serveyar_upload_image_url')->where('surveyor_id',session('user_id'))->get();
        $data['title']    = 'Serveyar';
        $data['subtitle'] = 'URL Generated';
        return view('surveyor-admin/urlgenerator/ServeryarUrlGenerated',$data);  
    } 

    public function urlGeneratedProcess(Request $request)
    {   
      
        $policy_no  = request('policy_no');  
        $vehicle_no  = request('vehicle_no' );  
        $generator_token = bin2hex(random_bytes(16))."GP";
        if($_POST){

            $reportData =  array('surveyor_id' =>session('user_id'),'report_type'=>1,'report_status'=>0);
            $report_id  = $this->Common_model->saveDate('cdx_surveyor_reports',$reportData);

            $policyData = array('report_id' =>$report_id,'policy' =>$policy_no);
            $policy_id  = $this->Common_model->saveDate('cdx_report_policy_details',$policyData);

             
              date_default_timezone_set('Asia/Kolkata'); 
             
            $new_time = date("Y-m-d H:i:s", strtotime('+24 hours'));
            $data  = array(
              'report_id'=>   $report_id,
              'policy_no'=>   $policy_no,
              'vehicle_no' => $vehicle_no,
              'surveyor_id' => session('user_id'),
              'generator_token' => $generator_token,
              'valid_date' => $new_time
             );

            $url_generator_id = $this->Common_model->saveDate('cdx_serveyar_upload_image_url',$data);
           
           // $update = $this->Common_model->updateDate('cdx_serveyar_upload_image_url', array('generated_url_id'=>$url_generator_id), array('generator_token'=>$generator_token) );
            Session::flash('msg', "URL has been successfully generated");
        }else{
            Session::flash('msg2', "Sorry!! token is not ganerated");
        }
        return redirect('serveyor/urlGenerated');  
    }
 
  public function imageGenerateurl(Request $request)
  {      date_default_timezone_set('Asia/Kolkata'); 
          $CurnTtime = Carbon::now();   
          $urlInfos = $this->Common_model->getData('cdx_serveyar_upload_image_url')->where('generator_token',$request->id)->where('valid_date', '>=', $CurnTtime)->first();

          
           

       if(empty($urlInfos)){
           $data['title']   = 'Codex Survey Solutions';
           return view('default/error', $data);  
       }else{
         return view('uploadAlbumImages',['urlData' => $urlInfos,'title' => 'Upload Images']);
       }
           
  }
    public function deleteGeneratedURL($id){
      $this->Common_model->deleteDate('cdx_serveyar_upload_image_url','id',$id);
      Session::flash('msg', "URL has been successfully deleted");
      return redirect('serveyor/urlGenerated');  
    }
 

}
