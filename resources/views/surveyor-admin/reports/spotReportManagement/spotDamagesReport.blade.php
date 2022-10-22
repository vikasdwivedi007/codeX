@extends('template_main') @section('content')
<style type="text/css">
.form-label {
	float: left !important;
}

.mb-3 p {
	float: left !important;
}
</style>
<!-- Content -->
<div class="container-xxl flex-grow-1 container-p-y">
	<h4 class="fw-bold py-3 mb-4">
			<span class="text-muted fw-light"> </span> 
	   <!--    <div style="float: right;margin-top: -10px;">
	      <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#BankModal">
	      Add New Record
	            </button>
	        </div> -->
	    </h4> @if(Session::has('msg'))
	<div class="row flasMsg">
		<div class="col-md-12">
			<div class="alert alert-success alert-dismissible" role="alert"> {{ Session::get('msg') }}
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>
		</div>
	</div> @endif
	<div class="authentication-wrapper authentication-cover">
		<div class="authentication-inner row m-0">
			<div class="d-flex col-lg-12 align-items-center authentication-bg p-sm-5 p-3" style="padding: 0px !important;">
				<div class="col-lg-12">
					<!-- Logo -->@if(Session::has('msg'))
					<p class="error" style="text-align: center;color: red;">{{ Session::get('msg') }}</p> @endif
					<div class="card">
						<div class="card-header">
	                     <ul class="nav nav-pills" role="tablist" >
	                        <li class="nav-item">
	                           <span class="tab-number btn-success">80%</span>
	                           <a class="nav-link-tab" id="policy_tab" href="{{url('SpotReport/policy-report/00')}}">Policy & Vehicle</a>
	                        </li>
	                        <li class="nav-item">
	                           <span class="tab-number btn-danger">0%</span>
	                           <a class="nav-link-tab" id="survey_tab" href="{{url('SpotReport/survey-report/00')}}">Survey</a>
	                        </li>
	                        <li class="nav-item active">
	                           <span class="tab-number btn-warning">80%</span>
	                           <a class="nav-link-tab active" id="damages_tab" role="tab" data-bs-toggle="tab" data-bs-target="#navs-pills-within-card-active" aria-controls="navs-pills-within-card-active" aria-selected="true" href="{{url('SpotReport/damages-report/00')}}">Damages</a>
	                        </li>
	                        <li class="nav-item">
	                           <span class="tab-number btn-success">80%</span>
	                           <a class="nav-link-tab" id="notes_tab" href="{{url('SpotReport/notes-remark-report/00')}}">Notes & Remark</a>
	                        </li>
	                     </ul>
	                  </div>

						<div class="card-body">
							<div class="tab-content p-0">
								<div class="tab-pane fade show active" id="navs-pills-within-card-active" role="tabpanel">
									<form id="registrationForm" class="mb-3" action="#" method="POST">
										<div class="row mt-4">
											<div class="col-md-12">
												<div class="row">
													<div class="col-md-12 col-lg-12">
														<div class="mb-3">
															<h5>Accidental Details:</h5>
															<hr> </div>
													</div>
													<div class="accidental-add-more" id="accidental-add-more">
														<div class="row">
															<div class="col-md-12 col-lg-2">
																<div class="mb-3 mySelect">
																	<label for="part" class="form-label">Part:</label>
																	<select id="part" class="form-select" name="part[]" onchange="subParts(this,1)">   
																		<option value="">Select</option>
																		 @foreach($parts as $row)
																        <option value="{{ $row->part_id }}">{{$row->part_name}}</option>
																        @endforeach
																 </select>
																	<p class="error" id="err_part"></p>
																</div>
															</div>
															<div class="col-md-12 col-lg-4">
																<div class="mb-3">
																	<label for="select2Multiple" class="form-label">Sub Part:</label>
																	<select class="select2 form-select subparts-1" name="subPart[]" id="select2Multiple" multiple>
																		<option>Select</option>
																	</select>
																	<p class="error" id="err_select2Multiple"></p>
																</div>
															</div>
															<div class="col-md-12 col-lg-5">
																<div class="py-3">
																	<label for="description" class="form-label">Description of Damages:</label>
																	<textarea id="description" name="description[]" class="form-control"></textarea>
																</div>
															</div>
															<div class="col-md-12 col-lg-1">
																<div class="mb-3">
																	<button type="button" class="btn rounded-pill btn-icon btn-outline-primary addCF" > <span class="tf-icons bx bx-plus"></span></button>
																</div>
															</div>
														</div>
													</div>
													<div class="row mt-5">
														<div class="col-md-12 col-lg-12" style="text-align: right;">
															<a style="color: #fff;" href="{{url('SpotReport/survey-report')}}/{{ $report_id; }}">
															<input type="hidden" id="damage_id" name="damage_id" value="@if(isset($damageDetails->damage_id)) {{$damageDetails->damage_id}} @endif">
															<button class="btn btn-primary btn-prev"><i class="bx bx-chevron-left bx-sm ms-sm-n2"></i> <span class="align-middle d-sm-inline-block d-none">Previous</span> </button>
															</a>
															<button type="button" class="btn btn-primary btn-next" onclick="saveSpotDamageReport('{{$report_id}}')"> <span class="align-middle d-sm-inline-block d-none me-sm-1 me-0">Save & Next</span> <i class="bx bx-chevron-right bx-sm me-sm-n2"></i> </button>
														</div>
													</div>
												</div>
											</div>
									</form>
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