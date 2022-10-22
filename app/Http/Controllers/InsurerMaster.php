<?php
namespace App\Http\Controllers;
require app_path('Helpers/helper.php');
use App\Models\Common_model as Common_model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;
use App\Http\Requests\BankRequest;
use App\Http\Resources\BankResource;
use App\Models\Bank;
use App\Models\Insurer;
use App\Models\Branch;


use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use Session;

class InsurerMaster extends Controller
{
    private $Common_model; 
    public function __construct(Common_model $Common_model)
    {
        $this->Common_model = $Common_model; 
    }

    public function index() 
    { 
        $banks = Bank::latest()->where('status', 1)->get();
       $insurer = Insurer::latest()->get();
       return view('master/insurer/insurerMaster',['insurers' => $insurer,'banks' => $banks,'title' => 'Insurer Master' ]);
    }


   public function insurerRegistration()
   { 
  
      return view('master/insurer/insurerAdd');
   }
 

    public function store(Request $request){     

     $validatedData = $request->validate([
          'insurer' => 'required',
          'initial' => 'required',
          'remark'  => 'required'
         
        ]);

       $insertArr = [

                'insurer' => $request->insurer,
                'initial' => $request->initial,
                'remark' => $request->remark
    ];
        $insert = $this->Common_model->saveDate('insurer_master', $insertArr);
        $success = Session::flash('msg', "Insure Master has been successfully save");
        return redirect('Master/insurer-master');
               

        $success = Session::flash('msg', "Insure Master has been successfully Update");
         return redirect('Master/insurer-master');
  }



public function insurerMasterEditFun(Request $request)
 {  
    $id = Crypt::decrypt($request->id);
    $insurerData = Insurer::where('id',$id)->first();
    return view('master/insurer/insurer_edit',['getOne' => $insurerData]);
}



public function updateInsurer(Request $request)
{     //echo "<pre>"; print_r($_POST); die();
     $id = $request->id;
     $validatedData = $request->validate([
           'insurer' => 'required',
           'initial' => 'required',
           'remark'  => 'required'
          
        ]);

       Insurer::where('id', $id)
       ->update([
                'insurer' => $request->insurer,
                'initial' => $request->initial,
                'remark' => $request->remark,
                'status' => $request->status
        ]);
        $success = Session::flash('msg', "Insure Master has been successfully Update");
         return redirect('Master/insurer-master');
}

   public function surveyorInsurerMaster() 
    { 
       $insurer_list = Insurer::latest()->where('status', 1)->get();
       $branch_list = Branch::latest()->where('status', 1)->get();
       $BankList    = $this->Common_model->getData('cdx_serveyor_bankaccounts')->where('surveyor_id', session('user_id'))->where('status', 1)->get();

       $insurer = DB::table('serveyor_insurer')
            ->where('serveyor_insurer.status', 1 )
            ->where('serveyor_insurer.serveyor_user_id', session('user_id') )
            ->leftJoin('insurer_master', 'serveyor_insurer.insurer_id', '=', 'insurer_master.id')
            ->select('serveyor_insurer.*', 'insurer_master.insurer')
            ->get();

//print_r($insurer); die;


       return view('surveyor-admin/InsurerManagement/SurveyorInsurer',['insurers' => $insurer,'insurer_list' => $insurer_list,'branch_list' => $branch_list,'BankList' => $BankList,'title' => 'Surveyor Insurer List' ]);
    }

  public function surveyorInsurerMasterForm()
    { 
        $insurer_list = Insurer::latest()->where('status', 1)->get();
       $branch_list = Branch::latest()->where('status', 1)->get();
       $BankList    = $this->Common_model->getData('cdx_serveyor_bankaccounts')->where('surveyor_id', session('user_id'))->where('status', 1)->get();

       $insurer = DB::table('serveyor_insurer')
            ->where('serveyor_insurer.status', 1 )
            ->where('serveyor_insurer.serveyor_user_id', session('user_id') )
            ->leftJoin('insurer_master', 'serveyor_insurer.insurer_id', '=', 'insurer_master.id')
            ->select('serveyor_insurer.*', 'insurer_master.insurer')
            ->get();
        
      return view('surveyor-admin/InsurerManagement/addSurveInsurer',['insurers' => $insurer,'insurer_list' => $insurer_list,'branch_list' => $branch_list,'BankList' => $BankList,'title' => 'Surveyor Insurer List' ]);
    }

  
    public function addSuveyorInsurer(Request $request) 
    {            

         $validatedData = $request->validate([
          'party_code' => 'required',
          'tat' => 'required',
          'tds' => 'required',
          'tcs' => 'required'
        ]);


      $data  = array(
        'serveyor_user_id'=>session('user_id'),
        'insurer_id'=>$request->insurer,
        'insurer_branch_id' =>$request->insurer_branch_id,
        'serveyor_bank_account_id' => $request->bank_account,
        'status'=>$request->status,
        'party_code' => $request->party_code,
        'tat' => $request->tat,
        'tds' => $request->tds,
        'tcs' => $request->tcs
      );
      $insurer_id  = $this->Common_model->saveDate('serveyor_insurer',$data);
      
      if ($request->from  > 0) {
            $getlength = count($request->from);
            for($i=0; $i < $getlength; $i++){
                $ammountData = [
                  'surveryor_id' => $insurer_id,
                  'from' => $request->from[$i],
                  'to' => $request->to[$i],
                  'amount' => $request->amount[$i] 
      ];

      $insertAmount  = $this->Common_model->saveDate('surveryor_amount',$ammountData); 

            }           
         }
      Session::flash('msg', "Insurer has been successfully save");
      return redirect('surveyor/serveyorInsurer');
    }

public function surveyorInsurerMasterEdit(Request $request)
 {     
      $id = Crypt::decrypt($request->id);
       $insurer_list = Insurer::latest()->where('status', 1)->get();
       $branch_list = Branch::latest()->where('status', 1)->get();
       $BankList    = $this->Common_model->getData('cdx_serveyor_bankaccounts')->where('surveyor_id', session('user_id'))->where('status', 1)->get();
      
       $insurer = DB::table('serveyor_insurer')
            ->where('serveyor_insurer.status', 1 )
            ->where('serveyor_insurer.serveyor_user_id', session('user_id') )
            ->leftJoin('insurer_master', 'serveyor_insurer.insurer_id', '=', 'insurer_master.id')
            ->select('serveyor_insurer.*', 'insurer_master.insurer')
            ->get();

         $insureSurveyorData = DB::table('serveyor_insurer')->get()->where('id',$id)->first();
         $surveyorAmountData = DB::table('surveryor_amount')->get()->where('surveryor_id',$id);
       return view('surveyor-admin/InsurerManagement/editSurveyorInsurer',['insurers' => $insurer,'insurer_list' => $insurer_list,'branch_list' => $branch_list,'BankList' => $BankList,'insureSurveyor' => $insureSurveyorData, 'rowamontData' => $surveyorAmountData ]);
  }

public function surveyorInsurerMasterViewDetails(request $request)
{     
       $id = Crypt::decrypt($request->id);
        $insurer = DB::table('serveyor_insurer')
            ->where('serveyor_insurer.id', $id )
            ->where('serveyor_insurer.serveyor_user_id', session('user_id') )
            ->leftJoin('insurer_master', 'serveyor_insurer.insurer_id', '=', 'insurer_master.id')
            ->leftJoin('branch_master', 'serveyor_insurer.insurer_branch_id', '=', 'branch_master.branch_id')
            ->leftJoin('cdx_serveyor_bankaccounts', 'serveyor_insurer.serveyor_bank_account_id', '=', 'cdx_serveyor_bankaccounts.id')
            ->select('serveyor_insurer.*', 'insurer_master.insurer','branch_master.branch_name','cdx_serveyor_bankaccounts.bank_name')
            ->first();
            //echo "<pre>"; print_r($insurer); die();
         $insureSurveyorData = DB::table('serveyor_insurer')->get()->where('id',$id)->first();
         $serveyorAmoutData  = DB::table('surveryor_amount')->get()->where('surveryor_id',$id);
      
  return view('surveyor-admin/InsurerManagement/SurveyorInsurerView',['insurers' => $insurer,'insureSurveyor' => $insureSurveyorData, 'serveyorAmoutData'=> $serveyorAmoutData]);
}


public function surveyorInsurerMasterUpdate(Request $request)
{   
       $id = $request->serveyor_insurer_id;
       $validatedData = $request->validate([
          'party_code' => 'required',
          'tat' => 'required',
          'tds' => 'required',
          'tcs' => 'required'
        ]);
      $updateArr  = array(
              'serveyor_user_id'=>session('user_id'),
              'insurer_id'=>$request->insurer,
              'insurer_branch_id' =>$request->insurer_branch_id,
              'serveyor_bank_account_id' => $request->bank_account,
              'status'=>$request->status,
              'party_code' => $request->party_code,
              'tat' => $request->tat,
              'tds' => $request->tds,
              'tcs' => $request->tcs
      );

   $update = $this->Common_model->updateDate('serveyor_insurer', array('id'=>$id), $updateArr); 

    if ($request->from > 0) {
                   $getlength = count($request->from);
                   for($i=0; $i < $getlength; $i++){

                $update = DB::table('surveryor_amount')
                             ->updateOrInsert(['id' => $request->amountSurveyorID[$i]],
              [   
                'from' => $request->from[$i],
                'to' => $request->to[$i],
                'amount' => $request->amount[$i],
                'surveryor_id' => $id
            ]); 
       }
    }
         $success = Session::flash('msg', "Sarveyor Insurer has been  successfully update");
         return redirect('surveyor/serveyorInsurer');
}
public function fetchBranch(Request $request)
     {   
        $branch_list['branch_list'] = Branch::where('insurer_id',$request->id)->get();
        return response()->json($branch_list);
     }


}