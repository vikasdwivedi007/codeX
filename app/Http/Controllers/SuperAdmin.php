<?php

namespace App\Http\Controllers;
require app_path('Helpers/helper.php');

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Config;
use Carbon\Carbon;

use App\Models\Common_model as Common_model;
use Session;

class SuperAdmin extends Controller
{
    private $Common_model; 
    public function __construct(Common_model $Common_model)
    {
        $this->Common_model = $Common_model; 
    }

    public function index()
    {
      $data['title'] = 'Dashboard';
      return view('super-admin/dashboard',$data);
    }
    
    public function SubscriptionPlans()
    {
        $data['list']    = $this->Common_model->getData('cdx_subscription')->orderBy('subscription_id', 'DESC')->get();
        $data['title']    = 'Components';
        $data['subtitle'] = 'Subscription Plans';
        return view('super-admin/subscriptionPlans/subscriptionPlans',$data);
    }

    public function saveSubscriptionPlansInfo()
    {
        $process_type             = request('process_type');  
        $subscription_id          = request('subscription_id');  
        $subscription_type        = request('subscription_type');   
        $subscription_titles      = request('subscription_titles');   
        $subscription_price       = request('subscription_price');   
        $subscription_description = request('subscription_description'); 
        $users_allowed            = request('users_allowed');  
        $data =  array('subscription_type' =>$subscription_type,'users_allowed' =>$users_allowed,'subscription_titles'=>$subscription_titles,'subscription_price'=>$subscription_price,'subscription_description'=>$subscription_description,'status'=>'1');
        if($process_type == 'add'){
            $subscription_id  = $this->Common_model->saveDate('cdx_subscription',$data);
            Session::flash('msg', "Subscription Plans Info has been successfully save");
        }else{
            $this->Common_model->updateDate('cdx_subscription',array('subscription_id'=>$subscription_id),$data); 
            Session::flash('msg', 'Subscription Plans Info   has been updated');
        }
       
        return redirect('Components/SubscriptionPlans');  
    }
    public function subscriptionActiveProcess($id=0,$id2=0)
    {
       $this->Common_model->updateDate('cdx_subscription',array('subscription_id'=>$id2),array('status'=>$id)); 
       if($id == '0'){
         Session::flash('msg', 'Subscription Plans Info has been deactive'); 
       }else{
         Session::flash('msg', 'Subscription Plans Info has been active'); 
       }
        return redirect('Components/SubscriptionPlans');  
    }
    //url Generated 
    public function urlGenerated()
    {
        $data['list']     = $this->Common_model->getData('cdx_generated_url')->orderBy('generated_url_id', 'DESC')->get();
        $data['title']    = 'Components';
        $data['subtitle'] = 'URL Generated';
        return view('super-admin/urlGenerated/urlGenerated',$data);  
    }
    public function urlGeneratedProcess()
    {
        $name  = request('name');  
        $email = request('email');  
        $count  = $this->Common_model->getData('cdx_generated_url')->where(array('email'=>$email))->count();
        if($count == '0'){
            $data  = array('name'=>$name,'email'=>$email,'status'=>'1');
            $url_generator_id = $this->Common_model->saveDate('cdx_generated_url',$data);
            $generator_token = bin2hex(random_bytes(16))."GP".$url_generator_id;
            $this->Common_model->updateDate('cdx_generated_url',array('generated_url_id'=>$url_generator_id),array('generator_token'=>$generator_token));
            Session::flash('msg', "URL has been successfully generated");
        }else{
            Session::flash('msg2', "This is email already used");
        }
        return redirect('Components/urlGenerated');  
    }
    
    public function deleteGeneratedURL($id=0)
    
    {
      $this->Common_model->deleteDate('cdx_generated_url','generated_url_id',$id);
      Session::flash('msg', "URL has been successfully deleted");
      return redirect('Components/urlGenerated');  
    }
    
    public function userList()
    {
        $data['list']     = $this->Common_model->getData('cdx_user')->whereNotIn('user_type_id',array('1'))->orderBy('user_id', 'DESC')->get();
        $data['title']    = 'Components';
        $data['subtitle'] = 'User List';
        return view('super-admin/userManagement/userList',$data);  
    }


    public function SubscriptionsPlan(){
        $data['list']    = $this->Common_model->getData('cdx_subscription_plans')->orderBy('subscription_plan_id', 'ASC')->get();
        $data['title']    = 'Components';
        $data['subtitle'] = 'Subscriptions Plan';
        return view('super-admin/subscriptionPlans/subscriptions-plan',$data);
    }


}
