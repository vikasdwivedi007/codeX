<!-- Core JS -->
  <!-- build:js assets/vendor/js/core.js -->
  <script src="{{asset('public/assets/vendor/libs/jquery/jquery.js')}}"></script> 
  <script src="{{asset('public/assets/vendor/libs/popper/popper.js')}}"></script>
  <script src="{{asset('public/assets/vendor/js/bootstrap.js')}}"></script>
  <script src="{{asset('public/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js')}}"></script>
  
 <!--   <script src="{{asset('public/assets/vendor/libs/hammer/hammer.js')}}"></script>
  <script src="{{asset('public/assets/vendor/libs/i18n/i18n.js')}}"></script> -->
  <!-- <script src="{{asset('public/assets/vendor/libs/typeahead-js/typeahead.js')}}"></script>  -->
  <!-- <script src="{{asset('public/assets/vendor/libs/bootstrap-select/bootstrap-select.js')}}"></script> -->
  <script src="{{asset('public/assets/vendor/js/menu.js')}}"></script>
  <script src="{{asset('public/assets/vendor/libs/select2/select2.js')}}"></script>
  <script src="{{asset('public/assets/js/forms-selects.js')}}"></script>

<!-- endbuild -->

  <!-- Vendors JS -->
  <script src="{{asset('public/assets/vendor/libs/datatables/jquery.dataTables.js')}}"></script>
  <script src="{{asset('public/assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js')}}"></script>
  <script src="{{asset('public/assets/vendor/libs/datatables-responsive/datatables.responsive.js')}}"></script>

  
  <script src="{{asset('public/assets/vendor/libs/apex-charts/apexcharts.js')}}"></script>

  <!-- Main JS -->
  <script src="{{asset('public/assets/js/main.js')}}"></script>

<!--     <script src="{{asset('public/assets/js/tables-datatables-basic.js')}}"></script> -->

  <script src="{{asset('public/assets/vendor/libs/sweetalert2/sweetalert2.js')}}"></script>
  <!-- Page JS -->
<!--   <script src="{{asset('public/assets/js/dashboards-analytics.js')}}"></script> -->
  <script src="{{asset('public/assets/js/extended-ui-sweetalert2.js')}}"></script>



<!--  <script src="{{asset('public/assets/vendor/libs/dropzone/dropzone.js')}}"></script>
 <script src="{{asset('public/assets/js/forms-file-upload.js')}}"></script> -->
<!-- <script type="text/javascript">
  $(document).ready(function ($) {

            // LISTEN TO THE CLICK AND SEND VIA AJAX TO THE SERVER
            $('.tui-image-editor-download-btn').on('click', function (e) {

                alert('fffdfdf');
            });
        });

</script> -->

<!--   <script src="{{asset('public/assets/js/pages-account-settings-account.js')}}"></script> -->
  <script src="{{asset('public/myCustomJs.js')}}"></script>
  <script src="{{asset('public/CustomJs.js')}}"></script>
  <script src="{{asset('public/final-report.js')}}"></script>
  <script src="{{asset('public/assets/js/form-layouts.js')}}"></script>
   <script src="{{asset('public/jquery.validate.min.js')}}"></script>
   <script src="{{asset('public/assets/js/form-validation.js')}}"></script>
<!-- <script src="//cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
       $('.ckeditor').ckeditor();
    });
</script> -->


 <script src="{{url('public/jBox-min.js')}}"></script>
 <script src="{{url('public/jquery.min.js')}}"></script>
 
 <script>
        var gallery = new jBox();
 </script>


 <script>
  $(document).ready(function () {
    $('#example').DataTable();
  });
</script>

<script type="text/javascript">
      (function () {
    var $input = $("input"),
        $select = $("select"),
        $textarea = $("textarea"),
        $field = $(".field"),
        $clearButton = $(".clear-button");

        $input
            .on("focusin", function () {
                var $this = $(this);
                $this.closest($field).addClass("focus-active");
            })
            .on("focusout", function () {
                var $this = $(this);
                $this.closest($field).removeClass("focus-active");
                if ($this.val() == "") {
                    $this.closest($field).removeClass("populated-input");
                } else {
                    $this.closest($field).addClass("populated-input");
                }
            });

        $select
            .on("focusin", function () {
                var $this = $(this);
                $this.closest($field).addClass("focus-active");
            })
            .on("focusout", function () {
                var $this = $(this);
                $this.closest($field).removeClass("focus-active");
                if ($this.val() == "") {
                    $this.closest($field).removeClass("populated-input");
                } else {
                    $this.closest($field).addClass("populated-input");
                }
            });

         $textarea
            .on("focusin", function () {
                var $this = $(this);
                $this.closest($field).addClass("focus-active");
            })
            .on("focusout", function () {
                var $this = $(this);
                $this.closest($field).removeClass("focus-active");
                if ($this.val() == "") {
                    $this.closest($field).removeClass("populated-input");
                } else {
                    $this.closest($field).addClass("populated-input");
                }
            });   

        $clearButton.on("click", function () {
            $input.closest($field).removeClass("populated-input");
        });
    })();

    </script>

