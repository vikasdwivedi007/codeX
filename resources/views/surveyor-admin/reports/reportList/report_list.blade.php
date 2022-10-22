@extends('template_main')
@section('content')
<!-- Content -->
<div class="container-xxl flex-grow-1 container-p-y">
  <h4 class="fw-bold py-3 mb-4">
    <span class="text-muted fw-light">{{$title}} /</span>
    <div style="float: right;margin-top: -10px;">
<!--       <button class="dt-button btn btn-primary" type="button"  onclick="addNewSubscriptionPlans()">
        <span><i class="bx bx-plus me-sm-2"></i> <span class="d-none d-sm-inline-block">Add New Record</span></span>
      </button> -->
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

  @if(Session::has('msg2'))
   <div class="row flasMsg">
      <div class="col-md-12">
          <div class="alert alert-danger alert-dismissible" role="alert">
              {{ Session::get('msg2') }}
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
                <th>Ref No</th>
                <th>Surveyor Type</th>
                <th>Registration No</th>
                <th>Insurerd Name</th>
                <th>Make Model</th>
                <th>TAT</th>
                <th>Surveyor Date</th>
                <!-- <th>Insurer</th> -->
                <th>Remark</th>
                <th>Access Amount</th>
               <!--  <th>Garage Name</th> -->
                <th>Claim No</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
           @foreach($sql as $row)  
            <tr>
                <td>{{$row->report_id}}</td>
                <td>
                  @if($row->report_type == 1)
                  <p>Sport</p>
                  @elseif($row->report_type == 2)
                  <p>Interim</p>
                  @else
                  <p>Final</p>
                  @endif

                </td>
                <td>{{$row->registration_no}}</td>
                <td>{{$row->insurer}}</td>
                <td>{{$row->make_variant_mod}}</td>
                <td>{{$row->tat}}</td>
                <td>{{$row->date_of_date}}</td>
                <td>{{$row->remark}}</td>
                <td></td>
                <td>{{$row->claim}}</td>
                <td>
                <a href="{{url('serveyor/report-view-details/'.$row->report_id)}}" title="View" class="btn btn-sm btn-icon item-view"><i class="fa fa-eye" aria-hidden="true"></i></a>
                </td>
               
                
            </tr>
         @endforeach
        </tbody>
         
    </table>
  </div>
</div>



<!-- Add From -->


</div>
<!--/ Content -->
@endsection