@extends('template_main')
@section('content')
<!-- Content -->
<div class="container-xxl flex-grow-1 container-p-y">
<h4 class="fw-bold py-3 mb-4">
   <span class="text-muted fw-light">Add Insurer</span> 
   <!--    <div style="float: right;margin-top: -10px;">
      <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#BankModal">
      Add New Record
            </button>
      </div> -->
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
                  <!-- 1. Delivery Address -->
                            @if (count($errors) > 0)   
                            @foreach ($errors->all() as $error)
                            @endforeach
                            @endif
                   <form class="needs-validation" novalidate name="addVehile" id="addVehile" action="{{url('Master/saveInsurerData')}}" method="post" > 
                      <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                  <h5 class="mb-4">Add Insurer</h5>
                  <div class="row g-3">
                     <div class="col-md-6">
                         <label for="insurer" class="form-label">Insurer</label>
                        <input type="text"  id="insurer" name="insurer" class="form-control" required placeholder="Enter Insurer Name">
                         <div class="invalid-feedback"> Please Enter Insurer Name. </div>
                        @error('insurer')
                        <li class="text-danger">{{ $message }}</li>
                        @enderror
                     </div>
                     <div class="col-md-6">
                         <label for="initial" class="form-label">Initial</label>
                          <input type="text" id="initial" name="initial" class="form-control" placeholder="Initial" required>
                           <div class="invalid-feedback"> Please Enter Initial .</div>
                           @error('initial')
                        <li class="text-danger">{{ $message }}</li>
                        @enderror
                     </div>
                     </div>
                     <div class="col mb-12">
                          <label for="remark" class="form-label">Remark</label>
                          <textarea name="remark" class="form-control" required></textarea>
                          <div class="invalid-feedback"> Please Enter Remark .</div>
                           @error('remark')
                        <li class="text-danger">{{ $message }}</li>
                        @enderror
                      </div>
                    <!-- <div class="col mb-6">
                         
                        <input type="checkbox" value="1" name="status" id="status">
                         <label for="designation" class="form-label">Active</label>
                      </div>    -->
                      
                   
                </div>
                 
                       <div class="modal-footer">
                        <button type="submit" name="submit" value="submit"  class="btn btn-primary">Save</button>
                      </div>
                    </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
    </form>
   </div>
</div>
<!--/ Content -->
@endsection