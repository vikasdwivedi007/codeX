    




@extends('template_main')
@section('content')
<!-- Content -->
<div class="container-xxl flex-grow-1 container-p-y">
  <h4 class="fw-bold py-3 mb-4">
    <span class="text-muted fw-light">{{$title}} List</span> 
    <div style="float: right;margin-top: -10px;">
   <a href="{{url('Master/insurer-master/add')}}" type="button" class="btn btn-primary" > Add New Insurer </a>
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
  <div class="row">
    
  <div class="col-12">
  <div class="card">
  <h5 class="card-header">Insurer Master List</h5>
  <div class="card-datatable table-responsive">
    <table id="example" class="table table-striped" >
      <thead>
        <tr>
          <th>No</th>
          <th>Insurer</th>
          <th>Initial</th>
          <th>Status</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach($insurers as $insurer){ ?>
            
        
        <tr>
          <td><?php echo $insurer->id; ?></td>
          <td><?php echo $insurer->insurer; ?></td>
          <td><?php echo $insurer->initial; ?></td>
          <td><?php 
              if ($insurer->status == 1) { ?>
                <a href="javascript:void(0)" class="btn btn-primary btn-xs" >Active</a>
              <?php }else { ?>
                  <a href="javascript:void(0)" class="btn btn-danger btn-xs" >Inactive</a>
              <?php } ?>
          </td>
          <td>
              <a href="{{url('Master/insurer-master/edit/'.Crypt::encrypt($insurer->id))}}" class="btn btn-sm btn-icon item-edit"><i class="bx bxs-edit"></i></a>
          </td>
        </tr>
        <?php } ?>
      </tbody>
    </table>
  </div>
</div>
</div>
</div>        
</div>
@endsection