	@extends('template_main')
	@section('content')
	<style type="text/css">
		.form-label{
			float: left !important;
		}
		.mb-3 p{
			float: left !important;
		}
	</style>
	<!-- Content -->
	<div class="container-xxl flex-grow-1 container-p-y">
		<!-- <h4 class="fw-bold mb-4 py-3">
			<span class="text-muted fw-light"> </span> 
	    </h4> -->
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
	    <div class="authentication-wrapper authentication-cover">
	    	<div class="authentication-inner row m-0">
	    		<div class="d-flex col-lg-12 align-items-center authentication-bg">
	    			<div class="col-lg-12">
	    				<!-- Logo -->
	    				@if(Session::has('msg'))
	    				<p class="error" style="text-align: center;color: red;">{{ Session::get('msg') }}</p>
	    				@endif

	    				<div class="row mb-2">
	    					<div class="col-md-6">
	    						<nav aria-label="breadcrumb">
							      <ol class="breadcrumb breadcrumb-style1">
							        <li class="breadcrumb-item">
							          <a href="#">Reports</a>
							        </li>
							        <li class="breadcrumb-item active">Final</li>
							      </ol>
							    </nav>		
	    					</div>
	    					<div class="col-md-6 text-end">
	    						<button type="button" class="btn btn-primary btn-next">Add New</button>
	    					</div>
	    					
	    				</div>
	    				<div class="card">
	    					<div class="card-header">
	    						<ul class="nav nav-pills card-header-pills" role="tablist">
	    							<li class="nav-item">
	    								<span class="tab-number btn-success">80%</span>
	    								<a class="nav-link-tab" id="survey_tab" href="{{url('final/policy-report')}}">Policy & Vehicle</a>
	    							</li>
	    							<li class="nav-item">
	    								<span class="tab-number btn-danger">0%</span>
	    								<a class="nav-link-tab" id="survey_tab" href="{{url('final/survey-report')}}">Survey</a>
	    							</li>
	    							<li class="nav-item">
	    								<span class="tab-number btn-warning">80%</span>
	    								<a class="nav-link-tab" id="survey_tab" href="{{url('final/new-parts')}}">New Parts</a>
	    							</li>
	    							<li class="nav-item">
	    								<span class="tab-number btn-success">80%</span>
	    								<a class="nav-link-tab" id="survey_tab" href="{{url('final/labour')}}">Labour</a>
	    							</li>
	    							<li class="nav-item">
	    								<span class="tab-number btn-danger">0%</span>
	    								<a class="nav-link-tab active" id="policy_tab" role="tab" data-bs-toggle="tab" data-bs-target="#navs-pills-within-card-active" aria-controls="navs-pills-within-card-active" aria-selected="true">Summery & Remark</a>
	    							</li>
	    						</ul>
	    					</div>
	    					<div class="card-body">
	    						<div class="tab-content p-0">
	    							<div class="tab-pane fade show active" id="navs-pills-within-card-active" role="tabpanel">    								
	    								<form id="registrationForm" class="mb-3" action="#" method="POST">
	    									<div class="row mt-4">
	    										<div class="col-md-12">
	    											Working...
	    											
	    										</div>
	    									</div>    									
	    								</form>
	    							</div>
	    						</div>
	    					</div>
	    				</div>
	    				</div>
	    			</div>
	    			<!-- /Login -->
	    		</div>
	    	</div>


	    </div>













	    <!--/ Content -->
	    @endsection