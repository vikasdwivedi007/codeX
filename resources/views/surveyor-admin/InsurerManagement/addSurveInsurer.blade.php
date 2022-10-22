@extends('template_main')
@section('content')
<!-- Content -->
<div class="container-xxl flex-grow-1 container-p-y">
<h4 class="fw-bold py-3 mb-4">
    <span class="text-muted fw-light">Add Surveyor Insurer</span>
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
<!-- Vehicle update form here  -->
<div class="row">
   <div class="col-12">
      <div class="card">
         <div class="card-body">
            <div class="row">
               <div class="col-lg-8 mx-auto">
                
                            @if (count($errors) > 0)   
                            @foreach ($errors->all() as $error)
                            @endforeach
                            @endif
                            
                   <form class="needs-validation" novalidate class="add-new-record pt-0 row g-2" id="form-add-new-record" action="{{url('surveyor/addSuveyorInsurer')}}" method="POST">
                  {{ csrf_field() }}

                    <div class="row">
                      <div class="col md-6">
                        <label for="insurer" class="form-label">Insurer Name</label>
                        <select class="form-select" data-allow-clear="true" name="insurer" onchange="insurerBranch(this)" required>
                          <option value="">Select</option>
                          @foreach($insurer_list as $row) 
                          <option value="{{$row->id}}">{{ $row->insurer }}</option>  
                          @endforeach 
                        </select>
                         <div class="invalid-feedback"> Please Select Insurer Name. </div>
                        @error('insurer')
                        <div class="alert-danger mt-1 mb-1">{{ $message }}</div>
                        @enderror
                      </div>
                  

                      <div class="col mb-6">
                        <label for="insurer" class="form-label">Branch</label>
                        <select class=" form-select" data-allow-clear="true" name="insurer_branch_id" id="insurer_branch"  required>
                          <option value="">Select</option>
                         
                        </select>
                        <div class="invalid-feedback"> Please Select Branch Name. </div>
                        @error('insurer')
                        <div class="alert-danger mt-1 mb-1">{{ $message }}</div>
                        @enderror
                      </div>
                    </div>

                    <div class="row">
                      <div class="col mb-6">
                        <label for="bank_account" class="form-label">Bank Account</label>
                        <select class=" form-select" data-allow-clear="true" name="bank_account" id="bank_account" required>
                          <option value="">select</option>
                          @foreach($BankList as $row) 
                          <option value="{{$row->id}}">{{ $row->bank_name }} ({{ $row->ac_no }})</option>  
                          @endforeach 
                        </select>
                        <div class="invalid-feedback"> Please Select Bank Name. </div>
                        @error('insurer')
                        <div class="alert-danger mt-1 mb-1">{{ $message }}</div>
                        @enderror
                      </div>

                      <div class="col mb-6">
                        <label for="party_code" class="form-label">Party Code</label>
                        <input type="text" class="form-control" id="party_code" name="party_code" placeholder="Enter Party Code" required>
                        <div class="invalid-feedback"> Please Enter Party Code. </div>
                         @error('party_code')
                        <div class="text-danger">{{ $message }}</div>
                        @enderror
                      </div>
                    </div>

                    <div class="row">
                      <div class="col mb-6">
                        <label for="tat" class="form-label">TAT</label>
                        <input type="text" class="form-control" id="tat" name="tat" placeholder="Enter TAT" required>
                        <div class="invalid-feedback"> Please Enter TAT. </div>
                          @error('tat')
                        <div class="text-danger">{{ $message }}</div>
                        @enderror
                      </div>
                    
                      <div class="col mb-6">
                        <label for="tds" class="form-label">TDS</label>
                        <input type="text" class="form-control" id="tds" name="tds" placeholder="Enter TDS" required>
                        <div class="invalid-feedback"> Please Enter TDS. </div>
                          @error('tds')
                        <div class="text-danger">{{ $message }}</div>
                        @enderror
                      </div>
                    </div>

                    <div class="row">
                      <div class="col mb-6">
                        <label for="tcs" class="form-label">TCS</label>
                        <input type="text" class="form-control" id="tcs" name="tcs" placeholder="Enter TCS" required>
                        <div class="invalid-feedback"> Please Enter TCS. </div>
                          @error('tcs')
                        <div class="text-danger">{{ $message }}</div>
                        @enderror
                      </div>
                   
                    <div class="col mb-6">
                       <label for="bank" class="form-label">Status</label>
                         <select class="form-select" data-allow-clear="true" name="status" id="status">
                          <option value="1">Active</option>
                          <option value="0">InActive</option>  
                        </select>
                      </div>
                  </div>
                   <br><br><br><br>
                   
                  <div class="row">
                     <div class="col-md-9 dynamic-field" id="dynamic-field-1">
                        <div class="row">
                           <div class="col-md-4">
                              <div class="form-group">
                                 <label for="field" class="hidden-md">From</label>
                                 <input type="text" id="field" class="form-control" name="from[]" placeholder="Enter From" required>
                                 <div class="invalid-feedback"> Please Enter From. </div>
                              </div>
                           </div>

                           <div class="col-md-4">
                              <div class="form-group">
                                 <label>To</label>
                                 <input type="text" class="form-control" name="to[]" placeholder="Enter To" required>
                                 <div class="invalid-feedback"> Please Enter TO. </div>
                              </div>
                           </div>

                             <div class="col-md-4">
                              <div class="form-group">
                                 <label>Amount</label>
                                 <input type="text" class="form-control" name="amount[]" placeholder="Enter Amount" required>
                                 <div class="invalid-feedback"> Please Enter Amount. </div>
                              </div>
                           </div>
                        </div>
                     </div>

                     <div class="col-md-3 mt-30 append-buttons" style="margin-top: 30px;">
                        <div class="clearfix">
                           <button type="button" class="btn rounded-pill btn-icon btn-outline-primary" id="add-button" ><i class="tf-icons bx bx-plus"></i>
                           </button>
                         <button type="button" class="btn rounded-pill btn-icon btn-outline-primary" id="remove-button" disabled="disabled"><i class="tf-icons bx bx-minus"></i>
                           </button>
                        </div>
                     </div>
                  </div>
              
                <br><br><br><br>
                  <!-- append section  -->    
                    <div class="modal-footer">
                      <button type="submit" class="btn btn-primary">Save</button>
                    </div>
            </form>
   </div>
</div>
<!--/ Content -->
@endsection