<?php
namespace App\Http\Controllers;
require app_path('Helpers/helper.php');
use App\Models\Common_model as Common_model;
use Illuminate\Http\Request;
use App\Models\Bank;
use App\Models\Insurer;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use Session;

class SpotReport extends Controller
{
    private $Common_model; 
    public function __construct(Common_model $Common_model)
    {
        $this->Common_model = $Common_model; 
    }
    
    public function index(Request $request) 
    {
      $id = $request->id;
      if(!empty($id)){
        $reportDetails = DB::table('cdx_surveyor_reports')->where('report_id', $id )->first();
        $policyDetails = DB::table('cdx_report_policy_details')->where('report_id', $id )->first();
        $vehicleDetails = DB::table('cdx_report_vehicle_details')->where('report_id', $id )->first();
        $driverDetails = DB::table('cdx_report_driver_licence_details')->where('report_id', $id )->first();
        //print_r($policyDetails);
      }else{
        $reportDetails = '';
        $policyDetails = '';
        $vehicleDetails = '';
        $driverDetails = '';
      }
      //$insurer = Insurer::latest()->where('status', 1)->paginate(10);
      $banks = Bank::latest()->where('status', 1)->get();

      $insurer = DB::table('serveyor_insurer')
            ->where('serveyor_insurer.status', 1 )
            ->where('serveyor_insurer.serveyor_user_id', session('user_id') )
            ->leftJoin('insurer_master', 'serveyor_insurer.insurer_id', '=', 'insurer_master.id')
            ->select('serveyor_insurer.*', 'insurer_master.insurer')
            ->get();
            $vehicles =  DB::table('cdx_vehicle')->where('status', 1 )->get()->all();     

       return view('surveyor-admin/reports/spotReportManagement/spotPolicyReport',[
            'insurers' => $insurer,'banks' => $banks,'vehicles' => $vehicles,'reportDetails' => $reportDetails,'PolicyDetails' => $policyDetails,'vehicleDetails' => $vehicleDetails,'driverDetails' => $driverDetails,'title' => 'Sport Report'
        ]);

    }
 public function policyDetails(Request $request)
 { 
  if ($request->policy) {
      $policy = $request->policy; 

      $policyDetails = DB::table('cdx_report_policy_details')->where('policy', $policy )->first();
      if($policyDetails){
        echo json_encode(['msg'=>'success','policyDetails'=>$policyDetails]); die;
      }else{
        echo json_encode(['errorMsg'=>'Sorry! your policy Number is Invalid']); die;
      }
      
   }else{
       echo json_encode(['msg'=>'Sorry there is no result found !!!']); die;
   }
 }

    public function spotSurveyReport(Request $request){

         $id = $request->id;
      if(!empty($id)){
       
        $surveyDetails = DB::table('cdx_report_survey_details')->where('report_id', $id )->first();
        
      }else{
        $surveyDetails = '';
      }

       return view('surveyor-admin/reports/spotReportManagement/spotSurveyReport',[
            'report_id' => $id,'surveyDetails' => $surveyDetails,'title' => 'Sport Report'
        ]); 
    }

    
    public function spotDamagesReport(Request $request){
      $id = $request->id;
      $parts =  DB::table('cdx_parts')->where('status', 1 )->get()->all();

      if(!empty($id)){
       
        $damageDetails = DB::table('cdx_report_damage_details')->where('report_id', $id )->first();
        
      }else{
        $damageDetails = '';
      }

      return view('surveyor-admin/reports/spotReportManagement/spotDamagesReport',[
            'parts' => $parts,'damageDetails' => $damageDetails,'report_id' => $id,'title' => 'Sport Report'
        ]); 
    }

    public function storeSpotDamagesReport(Request $request){
      $id = $request->id;


      $parts =  DB::table('cdx_parts')->where('status', 1 )->get()->all();

      $parts = json_encode($request->part);
      $subPart = json_encode($request->subPart);
      print_r($request->part); die;
      $damageData =  array('report_id' =>$request->report_id,'parts'=>$parts,'subParts'=>$subPart,'description'=>$request->vehicle_registration);
      
      if(!empty($request->damage_id)){

        $damageUpdate = $this->Common_model->updateDate('cdx_report_damage_details', array('damage_id'=>$request->damage_id), $damageData);

      }else{
        $damage_id  = $this->Common_model->saveDate('cdx_report_damage_details',$damageData);
      }

      echo json_encode(['msg'=>'success','report_id'=>$id,'damage_id'=>$damage_id]); die;
    }

    public function spotNotesRemarkReport(Request $request){
      $id = $request->id;
      return view('surveyor-admin/reports/spotReportManagement/spotNotesRemarkReport',[
            'report_id' => $id, 'title' => 'Sport Report'
        ]); 
    }
  
  public function storePolicyDetails(Request $request){
      $attr = $request->toArray();
      //print_r($attr); die;
      $report_id = $request->report_id;
      $reportData =  array('surveyor_id' =>session('user_id'),'insurer_id'=>$request->insurer_id,'insurer_branch_id'=>$request->insurer_branch_id,'report_type'=>$request->report_type,'report_status'=>$request->report_status,'reference_number'=>$request->reference_number);
      
      if(!empty($request->report_id)){
        $updateReport = $this->Common_model->updateDate('cdx_surveyor_reports', array('report_id'=>$report_id), $reportData);

        $policyData = array('policy'=>$request->policy,'idv'=>$request->idv,'policy_type'=>$request->policy_type,'insurance_from_date'=>$request->insurance_from_date,'insurance_to_date'=>$request->insurance_to_date,'insurer_id'=>$request->insurer_id,'insurer_branch_id'=>$request->insurer_branch_id,'appointing_office'=>$request->appointing_office,'insured'=>$request->insured,'address'=>$request->address,'hpa'=>$request->hpa,'claim'=>$request->claim);

        $policy_id = $this->Common_model->updateDate('cdx_report_policy_details', array('report_id'=>$report_id), $policyData);

      }else{
        $report_id  = $this->Common_model->saveDate('cdx_surveyor_reports',$reportData);

        $policyData = array('report_id' =>$report_id,'policy'=>$request->policy,'idv'=>$request->idv,'policy_type'=>$request->policy_type,'insurance_from_date'=>$request->insurance_from_date,'insurance_to_date'=>$request->insurance_to_date,'insurer_id'=>$request->insurer_id,'insurer_branch_id'=>$request->insurer_branch_id,'appointing_office'=>$request->appointing_office,'insured'=>$request->insured,'address'=>$request->address,'hpa'=>$request->hpa,'claim'=>$request->claim);
        
        $policy_id  = $this->Common_model->saveDate('cdx_report_policy_details',$policyData);
      }
      
      echo json_encode(['msg'=>'success','report_id'=>$report_id]); die;
  }

  
  public function storeVehicleDetails(Request $request){
      $attr = $request->toArray();
      //print_r($attr); die;
      $report_id = $request->report_id;
      $report_vehicle_id = $request->report_vehicle_id;

      $vehicleData =  array('report_id' =>$request->report_id,'master_vehicle_id'=>$request->master_vehicle_id,'vehicle_type'=>$request->vehicle_type,'registration_no'=>$request->vehicle_registration,'registerd_owner'=>$request->registered_owner,'owner_sr_trs'=>$request->owner_sr,'date_of'=>$request->date_of_registration,'date_of_date'=>$request->date_of_date,'chassis'=>$request->chassis,'chassis_phy_checked'=>$request->chassis_phy_checked,'engine'=>$request->engine,'engine_phy_checked'=>$request->engine_phy_engine,'color'=>$request->reference_number,'odometer_reading'=>$request->odometer_reading,'puc_details'=>$request->puc_details,'puc_upto_date'=>$request->puc_upto,'remark_rlw'=>$request->remark_rlw,'remark_ulw'=>$request->remark_ulw,'remark'=>$request->vehicle_remark,'com_fitness_certificate'=>$request->com_fitness_certificate,'com_fitness_to_date'=>$request->com_fitness_to_date,'com_fitness_from_date'=>$request->com_fitness_from_date,'com_parmit_to_date'=>$request->com_parmit_to_date,'com_parmit_from_date'=>$request->com_parmit_from_date,'com_type_of_parmit'=>$request->com_type_of_parmit,'com_authorization_validity'=>$request->com_authorization_validity,'com_area_of_opration'=>$request->com_area_of_opration,'make_variant_mod'=>$request->make_variant_mod,'fuel_used'=>$request->fuel_used,'type_fo_body'=>$request->type_fo_body,'cubic_capacity'=>$request->cubic_capacity,'accident_condition'=>$request->accident_condition,'reg_laden_wt'=>$request->reg_laden_wt,'unladen_wt'=>$request->unladen_wt,'seating_capacity'=>$request->seating_capacity,'class_of_vehicle'=>$request->class_of_vehicle,'tax_particulars'=>$request->tax_particulars);
      
      if(!empty($request->report_vehicle_id)){

        $vehicleUpdate = $this->Common_model->updateDate('cdx_report_vehicle_details', array('vehicle_id'=>$report_vehicle_id), $vehicleData);

      }else{
        $report_vehicle_id  = $this->Common_model->saveDate('cdx_report_vehicle_details',$vehicleData);
      }
      
      echo json_encode(['msg'=>'success','report_id'=>$report_id,'report_vehicle_id'=>$report_vehicle_id]); die;
  }
  
  public function storeDriverDetails(Request $request){
      $attr = $request->toArray();
      //print_r($attr); die;
      $report_id = $request->report_id;

      $report_driver_id = $request->report_driver_id;

      $driverData =  array('report_id' =>$request->report_id,'driving_licence'=>$request->driving_licence,'driver_name'=>$request->driver_name,'date_of_birth'=>$request->date_of_birth,'issue_date'=>$request->issue_date,'valid_from'=>$request->valid_from,'issuing_authority'=>$request->issuing_authority,'licence_type'=>$request->licence_type,'badge'=>$request->badge,'remark'=>$request->remark);
      
      if(!empty($request->report_driver_id)){

        $driverUpdate = $this->Common_model->updateDate('cdx_report_driver_licence_details', array('driver_id'=>$report_driver_id), $driverData);

      }else{
        $report_driver_id  = $this->Common_model->saveDate('cdx_report_driver_licence_details',$driverData);
      }
      
      echo json_encode(['msg'=>'success','report_id'=>$report_id,'report_vehicle_id'=>$report_driver_id]); die;
  }


  public function saveSurveyInfo(Request $request){

    $surveyDate =  array('report_id' =>$request->report_id,'date_of_accident'=>$request->date_of_accident,'time_of_accident'=>$request->time_of_accident,'place_of_accident'=>$request->place_of_accident,'vehicle_shifted_to'=>$request->vehicle_shifted_to,'parson_available_on_spot'=>$request->parson_available_on_spot,'parmit_to_date'=>$request->parmit_to_date,'allotment_date'=>$request->allotment_date,'inspection_date'=>$request->inspection,'cousenature'=>$request->cousenature,'police_action'=>$request->police_action,'name_of_police_satation'=>$request->name_of_police_satation,'satation_dairy_no'=>$request->satation_dairy_no,'nature_of_goods'=>$request->nature_of_goods,'Goods_caried'=>$request->Goods_caried,'origin_destination'=>$request->origin_destination,'lr_invoice_no'=>$request->lr_invoice_no,'transporter_no'=>$request->transporter_no,'no_of_passangers'=>$request->no_of_passangers,'tp_vehicle_details'=>$request->tp_vehicle_details,'tp_death_injuri_details'=>$request->tp_death_injuri_details,'death_tp_vehicle_details'=>$request->death_tp_vehicle_details,'third_party_property_damages'=>$request->third_party_property_damages);
      
      if(!empty($request->survey_id)){
        $survey_id = $this->Common_model->updateDate('cdx_report_survey_details', array('survey_id'=>$survey_id), $surveyDate);
      }else{
        $survey_id  = $this->Common_model->saveDate('cdx_report_survey_details',$surveyDate);
      }
      echo json_encode(['msg'=>'success','survey_id'=>$survey_id]); die;
  }



  public function saveSpotNotesRemark(Request $request){
      
     $notsArr =  array('report_id' =>$request->report_id,'damages'=>$request->remark_damages,'notes'=>$request->notes,'endclosers'=>$request->endclosers, 'remarks'=>$request->remarks);
      
      if(!empty($request->report_id)){
        $insert_ID  = $this->Common_model->saveDate('cdx_report_remark_details',$notsArr);
        echo json_encode(['msg'=>'success', 'id'=>$insert_ID]); die;
      }else{
          $getNotesData = DB::table('cdx_report_remark_details')->where('report_id',$request->report_id)->get();
         
      }
  }  


  public function reportList()
  {     
    $sql= DB::table('cdx_surveyor_reports')
            ->leftJoin('cdx_report_policy_details', 'cdx_surveyor_reports.report_id', '=', 'cdx_report_policy_details.report_id')
            ->leftJoin('cdx_report_vehicle_details', 'cdx_surveyor_reports.report_id', '=', 'cdx_report_vehicle_details.report_id')
            ->leftJoin('cdx_report_driver_licence_details', 'cdx_surveyor_reports.report_id', '=', 'cdx_report_driver_licence_details.report_id')
            ->leftJoin('serveyor_insurer', 'cdx_surveyor_reports.report_id', '=', 'serveyor_insurer.insurer_id')
             ->leftJoin('insurer_master', 'insurer_master.id', '=', 'cdx_report_policy_details.insurer_id')
            // ->select('cdx_surveyor_reports.*','cdx_report_policy_details.policy','cdx_report_policy_details.claim','cdx_report_policy_details.idv','cdx_report_vehicle_details.registration_no','cdx_report_vehicle_details.remark','cdx_report_vehicle_details.registerd_owner','cdx_report_driver_licence_details.driving_licence','cdx_report_driver_licence_details.driver_name')
            ->get();
        //echo "<pre>"; print_r($sql); die();    
         $data['title']    = 'Report List';
        return view('surveyor-admin/reports/reportList/report_list',$data,['sql' => $sql]);  
  }

 public function reportViewDetails($report_id)
  {      
     
         $sql2= DB::table('cdx_surveyor_reports')
            ->leftJoin('cdx_report_policy_details', 'cdx_surveyor_reports.report_id', '=', 'cdx_report_policy_details.report_id')
            ->leftJoin('cdx_report_vehicle_details', 'cdx_surveyor_reports.report_id', '=', 'cdx_report_vehicle_details.report_id')
            ->leftJoin('cdx_report_driver_licence_details', 'cdx_surveyor_reports.report_id', '=', 'cdx_report_driver_licence_details.report_id')
             ->where('cdx_surveyor_reports.report_id','=', $report_id)
             ->first();
          $data['title'] = 'Report View Details';
        return view('surveyor-admin/reports/reportList/report_view_details',$data);
  } 
}