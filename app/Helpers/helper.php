<?php
/**
* below funcation will use to show active/in-active status 
*
* @param $status
*/
//Get User Type
function getUserType($id)
	{
			$result = DB::table('cdx_user_type')->where('user_type_id', $id )->value('user_type');
	        return $result; 
	}
//Get User Info
function getUserInfo($id)
	{
			$result = DB::table('cdx_user')->where('user_id', $id )->first();
	        return $result; 
	}
//Get City Name
function getCityName($id)
	{
			$result = DB::table('cdx_cities')->where('city_id', $id )->value('city_name');
	        return $result; 
	}

//Get City Name
function getSubscriptionInfo($id)
	{
			$result = DB::table('cdx_subscription_plans_info')->where('subscription_plan_id', $id )->first();
	        return $result; 
	}
function getInsurerList($user_id)
	{
	      $result = DB::table('serveyor_insurer')
            ->where('serveyor_insurer.status', 1 )
            ->where('serveyor_insurer.serveyor_user_id',$user_id)
            ->leftJoin('insurer_master', 'serveyor_insurer.insurer_id', '=', 'insurer_master.id')
            ->select('serveyor_insurer.*', 'insurer_master.insurer')
            ->get();
            return $result;

	        
	}	
?>