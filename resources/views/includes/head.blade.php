<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
    <meta name="_token" content="{{csrf_token()}}" />
    

    <title><?php echo @$title? @$title : 'Codex Survey Solutions' ?></title>
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="{{asset('public/assets/img/fivicon.png')}}" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com/">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap" rel="stylesheet">

    <!-- Icons -->
    <link rel="stylesheet" href="{{asset('public/assets/vendor/fonts/boxicons.css')}}" />
    <link rel="stylesheet" href="{{asset('public/assets/vendor/fonts/fontawesome.css')}}" />
    <link rel="stylesheet" href="{{asset('public/assets/vendor/fonts/flag-icons.css')}}" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="{{asset('public/assets/vendor/css/rtl/core.css')}}" class="template-customizer-core-css" />
    <link rel="stylesheet" href="{{asset('public/assets/vendor/css/rtl/theme-default.css')}}" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="{{asset('public/assets/css/demo.css')}}" />

    <!-- Vendors CSS -->
     <link rel="stylesheet" href="{{asset('public/assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/vendor/libs/select2/select2.css')}}" />
    <link rel="stylesheet" href="{{asset('public/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css')}}" />
    <link rel="stylesheet" href="{{asset('public/assets/vendor/libs/typeahead-js/typeahead.css')}}" />
    <link rel="stylesheet" href="{{asset('public/assets/vendor/libs/apex-charts/apex-charts.css')}}" />
    <link rel="stylesheet" href="{{asset('public/assets/vendor/libs/sweetalert2/sweetalert2.css')}}" />
   <!--  <link rel="stylesheet" href="{{asset('public/assets/vendor/libs/dropzone/dropzone.css')}}" /> -->
 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.4.0/min/dropzone.min.css">
 
    
    <!-- <link rel="stylesheet" href="{{asset('public/assets/css/pintura.css')}}" /> -->
  <!--   <script src="{{asset('public/assets/js/pintura.js')}}"></script> -->

    <link rel="stylesheet" href="{{asset('public/assets/vendor/libs/dropzone/dropzone.css')}}" />
    <script src="{{asset('public/assets/vendor/libs/dropzone/dropzone-2.js')}}" ></script>

    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.4.0/dropzone.js"></script> -->

   <!--  <script src="{{asset('public/assets/vendor/libs/dropzone/dropzone.js')}}"></script> -->
    <!-- <script src="{{asset('public/assets/js/forms-file-upload.js')}}"></script> -->

    <link rel="stylesheet" href="{{asset('public/custom-style.css')}}" />
    <script src="{{url('public/style.css')}}"></script>
    <script src="{{url('public/jBox.css')}}"></script>

    <!-- Page CSS -->
    <!-- Helpers -->
    <script src="{{asset('public/assets/vendor/js/helpers.js')}}"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
   <!--  <script src="{{asset('public/assets/vendor/js/template-customizer.js')}}"></script>   -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="{{asset('public/assets/js/config.js')}}"></script>

   

    
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <!-- <script async="async" src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script> -->
   <!--  <script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
      dataLayer.push(arguments);
    }
    gtag('js', new Date());
    gtag('config', 'GA_MEASUREMENT_ID');
    </script> -->
    <style>
      #template-customizer{
        display: none !important;
      }
    </style>
    <!-- Custom notification for demo -->
    <!-- beautify ignore:end -->
    <input type="hidden" name="base_urls" id="base_urls" value="{{url('/')}}/">
 <input type="hidden" value="{{ csrf_token() }}" id="_token" name="_token"/>
</head>