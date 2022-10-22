@extends('template_main')
@section('content')
<!-- Content -->
<div class="container-xxl flex-grow-1 container-p-y">
  <h4 class="fw-bold py-3 mb-4">
    <span class="text-muted fw-light">{{$title}} /</span> {{$subtitle}}
    <div style="float: right;margin-top: -10px; display:none;">
      <button class="dt-button btn btn-primary" type="button"  onclick="addNewSubscriptionPlans()">
        <span><i class="bx bx-plus me-sm-2"></i> <span class="d-none d-sm-inline-block">Add New Record</span></span>
      </button>
    </div>
  </h4>

 @if(Session::has('msg'))
   <div class="row flasMsg">
      <div class="col-md-12">
          <div class="alert alert-success alert-dismissible" role="alert">
              {{ Session::get('msg') }}
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        </div>
    </div>      
  @endif  


<div class="card">
  <div class="card-datatable table-responsive">
       <table id="example" class="table table-striped">
        <thead>
            <tr>
                <th>Sno.</th>
                <th>Subscription Title</th>
                <th>Subscription Price</th>
                <th>Number of Surey</th>
                <th>Number of Days</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php $i=0;
             $status =  array('1' =>'Active','0'=>'Deactive');   
             foreach ($list as $value) { $i++; ?>
            <tr>
                <td>{{$i}} </td>
                <td>{{$value->subscription_titles}}</td>
                <td> {{ getSubscriptionInfo($value->subscription_plan_id)->subscription_price}} INR </td>
                <td> {{ getSubscriptionInfo($value->subscription_plan_id)->number_of_surey}} </td>
                <td> {{ getSubscriptionInfo($value->subscription_plan_id)->number_of_days}} Days </td>
                
                <td <?php if($value->status == '0'){ ?>class="text-danger"<?php } ?> >{{$status[$value->status]}}</td>
                <td>
                   <a href="javascript:void(0);" class="btn btn-sm btn-icon item-edit" onclick="editSubscriptionsPlanInfo('{{$value->subscription_plan_id}}')"><i class="bx bxs-edit"></i></a>
                </td>
            </tr>
            <?php } ?>
        </tbody>
         
    </table>
  </div>
</div>

<div class="modal fade" id="editSubecriptionsPlanInfo" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-simple modal-edit-user">
    <div class="modal-content p-3 p-md-5">
      <div class="modal-body">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        <div class="text-center mb-4">
          <h3>Edit Subscription</h3>
        </div>
        <form class="row g-3" action="{{url('Home/updateSubscriptionsPlanInfo')}}" id="updatePlanInfo">
          <div class="col-12 col-md-6">
            <label class="form-label" for="subscription_title">Subscription Title</label>
            <input type="text" id="subscription_title" name="subscription_title" class="form-control">
            <p class="error" id="err_subscription_title"></p>
          </div>
          <div class="col-12 col-md-6">
            <label class="form-label" for="subscription_price">Subscription Price</label>
            <input type="text" id="subscription_price" name="subscription_price" class="form-control">
            <p class="error" id="err_subscription_price"></p>
          </div>
          <div class="col-12 col-md-6">
            <label class="form-label" for="number_of_surey">Number of Surey</label>
            <input type="text" id="number_of_surey" name="number_of_surey" class="form-control">
            <p class="error" id="err_number_of_surey"></p>
          </div>
          <div class="col-12 col-md-6">
            <label class="form-label" for="number_of_days">Number of days</label>
            <input type="text" id="number_of_days" name="number_of_days" class="form-control">

          </div>
          <div class="col-12">
            <label class="form-label" for="number_of_days">Description</label>
            <textarea class="form-control" id="subscription_details" name="subscription_details"></textarea>
            <span><i><b>Note:</b> Please saprate line by comma,</i>
          </div>
          <div class="col-12 col-md-1"><label class="form-label" for="status">Status</label></div>
          <div class="col-12 col-md-6">
              <label class="switch">
                <input type="checkbox" class="switch-input">
                <span class="switch-toggle-slider">
                  <span class="switch-on"></span>
                  <span class="switch-off"></span>
                </span>
                <span class="switch-label">Active</span>
              </label>
            </div>
          <div class="col-12 text-center">
            <input type="hidden" id="subscription_plan_id" name="subscription_plan_id" value="">
            <button type="button" class="btn btn-primary" id="waiteAdminButtons" style="display: none;" disabled=""><i class="fa fa-spinner fa-spin"></i> Please wait..</button>
            <button type="button" id="updatePlan" class="btn btn-primary me-sm-3 me-1" onclick="updateSubscriptionsPlanInfo()">Update Plan</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
</div>

@endsection