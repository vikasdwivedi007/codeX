var urls  = $('#base_urls').val();




jQuery(document).ready(function($) {
	//Div Hide Ofter 7 Second
	jQuery('.flasMsg').fadeOut(7000);
    $(".onlyNumericKey").keypress(function (e) {
        if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                   jQuery('.onlynumeric').html('only numeric value are insert');    
                   return false;
        }else{
             jQuery('.onlynumeric').html('');    
        }
   });
});


 $('#commercialVehicle').click(function() {
 	    $("#commercialVehicle_div").toggle(this.checked);
 });
        //  State City selct inn droipdown

   $('#stateID').on('change', function () {
    var stateID = this.value;
    $("#cityID").html('');

              $.ajax({
                    url: urls+'Master/fetch-citys',
                    type: "POST",
                    data: {
				         _token: $('#_token').val(),
				         stateID : stateID 
				    	 },
                    success: function (response) {
                     // console.log(response.cities); return false;
                       $('#cityID').html('<option value="">Select</option>');
                        $.each(response.citiesName, function (key, value) {
                        	//$('#cityID').html('<option value="">Select</option>');
                            $("#cityID").append('<option value="' + value
                                .id + '">' + value.city + '</option>');
                        });
                        $("#cityID").append('<option value="' + value
                                .id + '">' + value.city + '</option>');
                    }
                });
          });



$("#check_all").click(function () {
     $('input:checkbox').not(this).prop('checked', this.checked);
});

function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#uploadedAvatar').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }
} 

$("#upload").change(function(){
    readURL(this);
});

function resetImage(){
	 new_src = urls+'/public/profile_img/'+jQuery('#upload_old').val();
	 $('#uploadedAvatar').attr('src', new_src); 
}


function setvalidation(strId,strT,strMsg){
   if(strT=='S'){
	       jQuery('#'+strId).css('border','');
		   jQuery('#err_'+strId).html('');
	   }else if(strT=='F'){			      
		      jQuery('#'+strId).css('border','1px solid #F00');
		      jQuery('#err_'+strId).html(strMsg);
	  }
} 
// For Login
function adminLogin(){
   var submircheak = 0 ;
   var email = jQuery('#email').val();    
    if (email==null || email==""){		     
        submircheak =1; 
		setvalidation('email','F',"Please insert user name");
     }else{			  
		 setvalidation('email','S',''); 
	 }
	var password = jQuery('#password').val();    
    if (password==null || password==""){		     
        submircheak =1; 
		setvalidation('password','F',"Please insert password");
     }else{			  
		 setvalidation('password','S',''); 
    }	 
	if(submircheak ==1){  
			   return false;
			}else{
				$("#submiteAdminButtons").hide();
				$("#waiteAdminButtons").show();
				$("#adminLoginForm").submit();
			}	 
}

function updateProfile(){
	$("#submiteAdminButtons").hide();
	$("#c_submiteAdminButtons").hide();
	$("#waiteAdminButtons").show();
	$("#formAccountSettings").submit();	
}  
 
function updatePassword(){
   var submircheak = 0 ;
   var old_password = jQuery('#old_password').val();    
    if (old_password==null || old_password==""){		     
        submircheak =1; 
		setvalidation('old_password','F',"Please insert old Password");
     }else{			  
		 setvalidation('old_password','S',''); 
	 }
	var new_password = jQuery('#new_password').val();    
    if (new_password==null || new_password==""){		     
        submircheak =1; 
		setvalidation('new_password','F',"Please insert New Password");
     }else{			  
		 setvalidation('new_password','S',''); 
    }
 	
    var confirm_password = jQuery('#confirm_password').val();    
    if (confirm_password==null || confirm_password==""){		     
        submircheak =1; 
		setvalidation('confirm_password','F',"Please insert Confirm Password");
     }else{			  
		 setvalidation('confirm_password','S',''); 
    }
    
    if(new_password != '' && confirm_password != ''){
        if (new_password != confirm_password){             
            submircheak =1; 
            setvalidation('confirm_password','F',"Old Password &  Confirm Password not match");
         }else{           
             setvalidation('confirm_password','S',''); 
        }   
    }
	if(submircheak ==1){  
			   return false;
	}else{
		$("#submiteAdminButtons").hide();
		$("#c_submiteAdminButtons").hide();
		$("#waiteAdminButtons").show();
		$("#formAccountSettings").submit();	
	}	 
} 

function addNewSubscriptionPlans(){
	$("#subscription_type").val('');
	$("#subscription_titles").val('');
	$("#subscription_price").val('');
	$("#subscription_description").val('');
	$("#subscription_id").val('');
	$("#process_type").val('add');
	$('#offcanvasBackdrop').offcanvas('toggle');
}
  
function saveSubscriptionPlansInfo(){
    var submircheak = 0 ;
    var subscription_type = jQuery('#subscription_type').val();    
    if (subscription_type==null || subscription_type==""){		     
        submircheak =1; 
		setvalidation('subscription_type','F',"Please select subscription type");
     }else{			  
		 setvalidation('subscription_type','S',''); 
	}
	var subscription_titles = jQuery('#subscription_titles').val();    
    if (subscription_titles==null || subscription_titles==""){		     
        submircheak =1; 
		setvalidation('subscription_titles','F',"Please insert subscription title");
     }else{			  
		 setvalidation('subscription_titles','S',''); 
	}
	var subscription_price = jQuery('#subscription_price').val();    
    if (subscription_price==null || subscription_price==""){		     
        submircheak =1; 
		setvalidation('subscription_price','F',"Please insert subscription price");
     }else{			  
		 setvalidation('subscription_price','S',''); 
	}
	var subscription_description = jQuery('#subscription_description').val();    
    if (subscription_description==null || subscription_description==""){		     
        submircheak =1; 
		setvalidation('subscription_description','F',"Please insert subscription description");
     }else{			  
		 setvalidation('subscription_description','S',''); 
	}	
	if(submircheak ==1){  
			   return false;
	}else{
		$("#submiteAdminButtons").hide();
		$("#c_submiteAdminButtons").hide();
		$("#waiteAdminButtons").show();
		$("#form-add-new-record").submit();	
	}
} 

function viewSubscriptionPlanInfo(srt){
	$.ajax({
	    type: "POST",
        url: urls+"Home/getSubscriptionPlanInfo",
        data: {
         _token: $('#_token').val(),
         subscription_id : srt 
    	 },
        dataType:"html",
        success: function(msg)
        { 
          var obj = jQuery.parseJSON(msg);
          jQuery('#v_subscription_titles').html(obj.subscription_titles);
          jQuery('#v_subscription_price').html(obj.subscription_price+' INR');
          jQuery('#v_subscription_type').html(' /'+obj.subscription_type);
          jQuery('#v_subscription_description').html(obj.subscription_description);
          jQuery('#v_users_allowed').html(obj.users_allowed+" Users Allowed");
          $('#viewSubscriptionPlanInfoModal').modal('show');
        }  
    });
}


function editSubscriptionPlanInfo(srt){
	$.ajax({
	    type: "POST",
        url: urls+"Home/getSubscriptionPlanInfo",
        data: {
         _token: $('#_token').val(),
         subscription_id : srt 
    	 },
        dataType:"html",
        success: function(msg)
        { 
            var obj = jQuery.parseJSON(msg);
            $("#subscription_type").val(obj.subscription_type);
			$("#subscription_titles").val(obj.subscription_titles);
			$("#subscription_price").val(obj.subscription_price);
			$("#subscription_description").val(obj.subscription_description);
			$("#subscription_id").val(obj.subscription_id);
			$("#users_allowed").val(obj.users_allowed);
			$("#process_type").val('edit');
			$('#offcanvasBackdrop').offcanvas('toggle'); 
        }  
    });
}



function subscriptionActiveProcess(srt1,srt2){
	var titles  = srt1 == "1" ? 'Are you sure you want active this Plans?' : 'Are you sure you want deactive this Plans?';
	Swal.fire({title: titles,confirmButtonText: 'Yes',cancelButtonText: 'No',showCancelButton: true,showCloseButton: true }).then((result) => {
          if (result.isConfirmed) {
            window.location.href = urls+'Components/subscriptionActiveProcess/'+srt1+'/'+srt2;
          }  
        });
}

function generatedURLProcess(){
	var submircheak = 0 ;
    var name = jQuery('#name').val();    
    if (name==null || name==""){		     
        submircheak =1; 
		setvalidation('name','F',"Please insert name");
     }else{			  
		 setvalidation('name','S',''); 
	}
	var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    var email = jQuery('#email').val();
    if (!regex.test(email)){         
        submircheak =1; 
        setvalidation('email','F',"Please enter  valid Email");
    }else{       
        setvalidation('email','S',''); 
    }
	 	
	if(submircheak ==1){  
			   return false;
	}else{
		$("#submiteAdminButtons_g").hide();
		$("#c_submiteAdminButtons_g").hide();
		$("#waiteAdminButtons").show();
		$("#form-add-new-record").submit();	
	}
}


function deleteGeneratedURL(srt1){
	Swal.fire({title: 'Are you sure you want delete this ?',confirmButtonText: 'Yes',cancelButtonText: 'No',showCancelButton: true,showCloseButton: true }).then((result) => {
          if (result.isConfirmed) {
            window.location.href = urls+'Components/deleteGeneratedURL/'+srt1;
          }  
        });
}

function deleteImageGenerateURL(srt1){
	Swal.fire({title: 'Are you sure you want delete this ?',confirmButtonText: 'Yes',cancelButtonText: 'No',showCancelButton: true,showCloseButton: true }).then((result) => {
          if (result.isConfirmed) {
            window.location.href = urls+'serveyor/deleteGeneratedURL/'+srt1;
          }  
        });
}

function viewGeneratedURL(srt){
	$("#v_generated_url").val(urls+'registration/'+srt);
	$('#viewGeneratedURLModal').modal('show');
}

function SurveryorViewGeneratedURL(srt){
	var texturl = urls+'surveyor/imageGenerateurl/'+srt;
	$("#v_generated_url").val(urls+'surveyor/imageGenerateurl/'+srt);
	$('#viewServeyorImageurl').modal('show');
}


function copyToClipboard() {
   var textBox = document.getElementById("v_generated_url");
   textBox.select();
   document.execCommand("copy");
}
 
function registrationProcess(srt){
	var next = parseInt(srt)+1;
	$("#list_tab_content_"+srt).hide();
	$("#list_tab_"+next).addClass("active");
	$("#list_tab_content_"+next).show();
} 

function registrationProcessBack(srt){
	var next = parseInt(srt)-1;
	$("#list_tab_"+srt).removeClass("active");
	$("#list_tab_content_"+srt).hide();
	$("#list_tab_content_"+next).show();
} 

function saveSurveyBasicInfo(){
	var submircheak = 0 ;
    var first_name = jQuery('#first_name').val();    
    if (first_name==null || first_name==""){		     
        submircheak =1; 
		setvalidation('first_name','F',"Please insert first name");
     }else{			  
		 setvalidation('first_name','S',''); 
	}
	var last_name = jQuery('#last_name').val();    
    if (last_name==null || last_name==""){		     
        submircheak =1; 
		setvalidation('last_name','F',"Please insert last name");
     }else{			  
		 setvalidation('last_name','S',''); 
	}
	var phone_no = jQuery('#phone_no').val();    
    if (phone_no==null || phone_no==""){		     
        submircheak =1; 
		setvalidation('phone_no','F',"Please insert phone no");
     }else{			  
		 setvalidation('phone_no','S',''); 
	}
	var city_id = jQuery('#city_id').val();    
    if (city_id==null || city_id==""){		     
        submircheak =1; 
		setvalidation('city_id','F',"Please select city");
     }else{			  
		 setvalidation('city_id','S',''); 
	}
	var address = jQuery('#address').val();    
    if (address==null || address==""){		     
        submircheak =1; 
		setvalidation('address','F',"Please insert address");
     }else{			  
		 setvalidation('address','S',''); 
	}

	 	
	if(submircheak ==1){  
			   return false;
	}else{
	   registrationProcess('1');
	}
}

function saveSurveyCompanyInfo(){
	var submircheak = 0 ;
    var company_name = jQuery('#company_name').val();    
    if (company_name==null || company_name==""){		     
        submircheak =1; 
		setvalidation('company_name','F',"Please insert company name");
     }else{			  
		 setvalidation('company_name','S',''); 
	}
	var company_phone_no = jQuery('#company_phone_no').val();    
    if (company_phone_no==null || company_phone_no==""){		     
        submircheak =1; 
		setvalidation('company_phone_no','F',"Please insert company phone");
     }else{			  
		 setvalidation('company_phone_no','S',''); 
	}
	var company_phone_no = jQuery('#company_phone_no').val();    
    if (company_phone_no==null || company_phone_no==""){		     
        submircheak =1; 
		setvalidation('company_phone_no','F',"Please insert company phone");
     }else{			  
		 setvalidation('company_phone_no','S',''); 
	}
	var company_address = jQuery('#company_address').val();    
    if (company_address==null || company_address==""){		     
        submircheak =1; 
		setvalidation('company_address','F',"Please insert company address");
     }else{			  
		 setvalidation('company_address','S',''); 
	}

	if(submircheak ==1){  
			   return false;
	}else{
	   registrationProcess('2');
	}
}

function paymentProcess(){
	var subscription_id  = $('input[name=subscription_id]:checked').val();
	if(subscription_id != '1'){
		alert('We are Working on');
	}else{
		$("#previous_3").prop('disabled', true);
		$("#next_3").hide();
	    $("#waiteAdminButtons").show();
		$("#registrationForm").submit();
	}
}


function saveSpotPolicyDetails(){ 

	var submircheak = 0;
    var policy = jQuery('#policy').val();    
    if (policy==null || policy==""){		     
        submircheak =1; 
		setvalidation('policy','F',"Please insert policy details");
     }else{			  
		 setvalidation('policy','S',''); 
	}
	var idv = jQuery('#idv').val();    
    if (idv==null || idv==""){		     
        submircheak =1; 
		setvalidation('idv','F',"Please insert I.D.V");
     }else{			  
		 setvalidation('idv','S',''); 
	}
	
	var policy_type = jQuery('#policy_type').val();    
 //    if (policy_type==null || policy_type==""){		     
 //        submircheak =1; 
	// 	setvalidation('policy_type','F',"Please insert policy type");
 //     }else{			  
	// 	 setvalidation('policy_type','S',''); 
	// }

	var insurance_from_date = jQuery('#insurance_from_date').val();    
 //    if (insurance_from_date==null || insurance_from_date==""){		     
 //        submircheak =1; 
	// 	setvalidation('insurance_from_date','F',"Please insert insurance from date");
 //     }else{			  
	// 	 setvalidation('insurance_from_date','S',''); 
	// }

	var insurance_to_date = jQuery('#insurance_to_date').val();    
 //    if (insurance_to_date==null || insurance_to_date==""){		     
 //        submircheak =1; 
	// 	setvalidation('insurance_to_date','F',"Please insert insurance To date");
 //     }else{			  
	// 	 setvalidation('insurance_to_date','S',''); 
	// }

	var insurers = jQuery('#insurers').val();    
 //    if (insurers==null || insurers==""){		     
 //        submircheak =1; 
	// 	setvalidation('insurers','F',"Please select insurer");
 //     }else{			  
	// 	 setvalidation('insurers','S',''); 
	// }

	var insurer_branch = jQuery('#insurer_branch').val();    
 //    if (insurer_branch==null || insurer_branch==""){		     
 //        submircheak =1; 
	// 	setvalidation('insurer_branch','F',"Please select insurer branch");
 //     }else{			  
	// 	 setvalidation('insurer_branch','S',''); 
	// }

	var appointing_office = jQuery('#appointing_office').val();    
 //    if (appointing_office==null || appointing_office==""){		     
 //        submircheak =1; 
	// 	setvalidation('appointing_office','F',"Please insert appointing office");
 //     }else{			  
	// 	 setvalidation('appointing_office','S',''); 
	// }

	var insured = jQuery('#appointing_office').val();    
 //    if (insured==null || insured==""){		     
 //        submircheak =1; 
	// 	setvalidation('insured','F',"Please insert insured");
 //     }else{			  
	// 	 setvalidation('insured','S',''); 
	// }

	var address = jQuery('#address').val();    
 //    if (address==null || address==""){		     
 //        submircheak =1; 
	// 	setvalidation('address','F',"Please insert address");
 //     }else{			  
	// 	 setvalidation('address','S',''); 
	// }

	var hpa = jQuery('#hpa').val();    
 //    if (hpa==null || hpa==""){		     
 //        submircheak =1; 
	// 	setvalidation('hpa','F',"Please insert H.P.A");
 //     }else{			  
	// 	 setvalidation('hpa','S',''); 
	// }

	var claim = jQuery('#claim').val();    
 //    if (claim==null || claim==""){		     
 //        submircheak =1; 
	// 	setvalidation('claim','F',"Please insert claim");
 //     }else{			  
	// 	 setvalidation('claim','S',''); 
	// }
	 	
	if(submircheak ==1){  
			  return false;
	}else{

		var report_id = jQuery('#report_id').val();    
	    $.ajax({
		    method:'POST',
	        url: urls+"SpotReport/addPolicyDetails",
	        data: {
	         _token: $('#_token').val(),
	         report_id : report_id,
	         policy : policy,
	         idv : idv,
	         policy_type : policy_type,
	         insurance_from_date : insurance_from_date,
	         insurance_to_date : insurance_to_date,
	         insurer_id : insurers,
	         insurer_branch_id : insurer_branch,
	         appointing_office : appointing_office,
	         insured : insured,
	         address : address,
	         hpa : hpa,
	         claim : claim, 
	         report_type : 1,
	         report_status : 0,
	         reference_number:'HA/S/0001',
	    	 },
	        success: function(response)
	        { 
	        	var obj = jQuery.parseJSON(response);
	        	
	        	console.log(obj.msg);
	        	console.log(obj.policy_id);
	        	console.log(obj.report_id);
	        	console.log('data inserted');

	        	$("#report_id").val(obj.report_id);
	        	registrationProcess('1');
		    }  
	    });



	   
	}
} 

function saveSpotVehicleDetails(){
	var submircheak = 0 ;
	
var vehicle = jQuery('#vehicle').val();   
	if (vehicle==null || vehicle==""){		     
        submircheak =1; 
		setvalidation('vehicle','F',"Please Select vehicle ");
     }else{			  
		 setvalidation('vehicle','S',''); 
	}

	var vehicle_registration = jQuery('#vehicle_registration').val();   
	if (vehicle_registration==null || vehicle_registration==""){		     
        submircheak =1; 
		setvalidation('vehicle_registration','F',"Please insert registration number details");
     }else{			  
		 setvalidation('vehicle_registration','S',''); 
	}



	var registered_owner = jQuery('#registered_owner').val();  
	// if (registered_owner==null || registered_owner==""){		     
 //        submircheak =1; 
	// 	setvalidation('registered_owner','F',"Please insert registered owner details");
 //     }else{			  
	// 	 setvalidation('registered_owner','S',''); 
	// }
	var owner_sr = jQuery('#owner_sr').val();  
	// if (owner_sr==null || owner_sr==""){		     
 //        submircheak =1; 
	// 	setvalidation('owner_sr','F',"Please insert owner Sr/Tr Date");
 //     }else{			  
	// 	 setvalidation('owner_sr','S',''); 
	// }
	var date_of_registration = jQuery('#date_of_registration').val();  
	// if (date_of_registration==null || date_of_registration==""){		     
 //        submircheak =1; 
	// 	setvalidation('date_of_registration','F',"Please insert date type");
 //     }else{			  
	// 	 setvalidation('date_of_registration','S',''); 
	// }
	var date_of_date = jQuery('#date_of_date').val();  
	// if (date_of_date==null || date_of_date==""){		     
 //        submircheak =1; 
	// 	setvalidation('date_of_date','F',"Please insert date");
 //     }else{			  
	// 	 setvalidation('date_of_date','S',''); 
	// }
	var chassis = jQuery('#chassis').val();  
	// if (chassis==null || chassis==""){		     
 //        submircheak =1; 
	// 	setvalidation('chassis','F',"Please insert chassis details");
 //     }else{			  
	// 	 setvalidation('chassis','S',''); 
	// }
	var engine = jQuery('#engine').val();  
	// if (engine==null || engine==""){		     
 //        submircheak =1; 
	// 	setvalidation('engine','F',"Please insert engine details");
 //     }else{			  
	// 	 setvalidation('engine','S',''); 
	// }
	var make_variant_mod = jQuery('#make_variant_mod').val();  
	// if (make_variant_mod==null || make_variant_mod==""){		     
 //        submircheak =1; 
	// 	setvalidation('make_variant_mod','F',"Please insert Make/Variant/Mod details");
 //     }else{			  
	// 	 setvalidation('make_variant_mod','S',''); 
	// }
	var fuel_used = jQuery('#fuel_used').val();  
	// if (fuel_used==null || fuel_used==""){		     
 //        submircheak =1; 
	// 	setvalidation('fuel_used','F',"Please insert fule used");
 //     }else{			  
	// 	 setvalidation('fuel_used','S',''); 
	// }
	var type_fo_body = jQuery('#type_fo_body').val();  
	// if (type_fo_body==null || type_fo_body==""){		     
 //        submircheak =1; 
	// 	setvalidation('type_fo_body','F',"Please insert body type");
 //     }else{			  
	// 	 setvalidation('type_fo_body','S',''); 
	// }
	var color = jQuery('#color').val();  
	// if (color==null || color==""){		     
 //        submircheak =1; 
	// 	setvalidation('color','F',"Please insert color details");
 //     }else{			  
	// 	 setvalidation('color','S',''); 
	// }
	var odometer_reading = jQuery('#odometer_reading').val();  
	// if (odometer_reading==null || odometer_reading==""){		     
 //        submircheak =1; 
	// 	setvalidation('odometer_reading','F',"Please insert odometer reading");
 //     }else{			  
	// 	 setvalidation('odometer_reading','S',''); 
	// }
	var cubic_capacity = jQuery('#cubic_capacity').val();  
	// if (cubic_capacity==null || cubic_capacity==""){		     
 //        submircheak =1; 
	// 	setvalidation('cubic_capacity','F',"Please insert cubic capacity");
 //     }else{			  
	// 	 setvalidation('cubic_capacity','S',''); 
	// }
	var accident_condition = jQuery('#accident_condition').val();  
	// if (accident_condition==null || accident_condition==""){		     
 //        submircheak =1; 
	// 	setvalidation('accident_condition','F',"Please insert pre accident condition");
 //     }else{			  
	// 	 setvalidation('accident_condition','S',''); 
	// }
	var puc_details = jQuery('#puc_details').val();  
	// if (puc_details==null || puc_details==""){		     
 //        submircheak =1; 
	// 	setvalidation('puc_details','F',"Please insert puc details");
 //     }else{			  
	// 	 setvalidation('puc_details','S',''); 
	// }
	var puc_upto = jQuery('#puc_upto').val();  
	// if (puc_upto==null || puc_upto==""){		     
 //        submircheak =1; 
	// 	setvalidation('puc_upto','F',"Please insert puc UpTo date");
 //     }else{			  
	// 	 setvalidation('puc_upto','S',''); 
	// }
	var tax_particulars = jQuery('#tax_particulars').val();  
	// if (tax_particulars==null || tax_particulars==""){		     
 //        submircheak =1; 
	// 	setvalidation('tax_particulars','F',"Please insert tax particulars");
 //     }else{			  
	// 	 setvalidation('tax_particulars','S',''); 
	// }
	var vehicle_remark = jQuery('#vehicle_remark').val();  
	// if (vehicle_remark==null || vehicle_remark==""){		     
 //        submircheak =1; 
	// 	setvalidation('vehicle_remark','F',"Please insert remark");
 //     }else{			  
	// 	 setvalidation('vehicle_remark','S',''); 
	// }

	var reg_laden_wt = jQuery('#reg_laden_wt').val();  
	// if (reg_laden_wt==null || reg_laden_wt==""){		     
 //        submircheak =1; 
	// 	setvalidation('reg_laden_wt','F',"Please insert Reg Laden Wt");
 //     }else{			  
	// 	 setvalidation('reg_laden_wt','S',''); 
	// }

	var unladen_wt = jQuery('#unladen_wt').val();  
	// if (unladen_wt==null || unladen_wt==""){		     
 //        submircheak =1; 
	// 	setvalidation('unladen_wt','F',"Please insert Unladen Wt.");
 //     }else{			  
	// 	 setvalidation('unladen_wt','S',''); 
	// }

	var seating_capacity = jQuery('#seating_capacity').val();  
	// if (seating_capacity==null || seating_capacity==""){		     
 //        submircheak =1; 
	// 	setvalidation('seating_capacity','F',"Please insert seating capacity");
 //     }else{			  
	// 	 setvalidation('seating_capacity','S',''); 
	// }

	var class_of_vehicle = jQuery('#class_of_vehicle').val();  
	// if (class_of_vehicle==null || class_of_vehicle==""){		     
 //        submircheak =1; 
	// 	setvalidation('class_of_vehicle','F',"Please insert Class Of Vehicle");
 //     }else{			  
	// 	 setvalidation('class_of_vehicle','S',''); 
	// }
 
 // readonly section vehicle section code

 var make_variant_mod = jQuery('#make_variant_mod').val();  
	// if (make_variant_mod==null || make_variant_mod==""){		     
 //        submircheak =1; 
	// 	setvalidation('make_variant_mod','F',"Please insert Make Variant mode");
 //     }else{			  
	// 	 setvalidation('make_variant_mod','S',''); 
	// }


 var fuel_used = jQuery('#fuel_used').val();  
	// if (fuel_used==null || fuel_used==""){		     
 //        submircheak =1; 
	// 	setvalidation('fuel_used','F',"Please insert Fuel used");
 //     }else{			  
	// 	 setvalidation('fuel_used','S',''); 
	// }

 var type_fo_body = jQuery('#type_fo_body').val();  
	// if (type_fo_body==null || type_fo_body==""){		     
 //        submircheak =1; 
	// 	setvalidation('type_fo_body','F',"Please insert Body type");
 //     }else{			  
	// 	 setvalidation('type_fo_body','S',''); 
	// }


 var odometer_reading = jQuery('#odometer_reading').val();  
	// if (odometer_reading==null || odometer_reading==""){		     
 //        submircheak =1; 
	// 	setvalidation('odometer_reading','F',"Please insert Odometer reading");
 //     }else{			  
	// 	 setvalidation('odometer_reading','S',''); 
	// }

 var cubic_capacity = jQuery('#cubic_capacity').val();  
	// if (cubic_capacity==null || cubic_capacity==""){		     
 //        submircheak =1; 
	// 	setvalidation('cubic_capacity','F',"Please insert Cubic capacity");
 //     }else{			  
	// 	 setvalidation('cubic_capacity','S',''); 
	// }

 var accident_condition = jQuery('#accident_condition').val();  
	// if (accident_condition==null || accident_condition==""){		     
 //        submircheak =1; 
	// 	setvalidation('accident_condition','F',"Please insert Accident condition");
 //     }else{			  
	// 	 setvalidation('accident_condition','S',''); 
	// }	


 var reg_laden_wt = jQuery('#reg_laden_wt').val();  
	// if (reg_laden_wt==null || reg_laden_wt==""){		     
 //        submircheak =1; 
	// 	setvalidation('reg_laden_wt','F',"Please insert Reg laden wt");
 //     }else{			  
	// 	 setvalidation('reg_laden_wt','S',''); 
	// }

 var unladen_wt = jQuery('#unladen_wt').val();  
	// if (unladen_wt==null || unladen_wt==""){		     
 //        submircheak =1; 
	// 	setvalidation('unladen_wt','F',"Please insert unladen wt");
 //     }else{			  
	// 	 setvalidation('unladen_wt','S',''); 
	// }	

 var seating_capacity = jQuery('#seating_capacity').val();  
	// if (seating_capacity==null || seating_capacity==""){		     
 //        submircheak =1; 
	// 	setvalidation('seating_capacity','F',"Please insert seating_capacity");
 //     }else{			  
	// 	 setvalidation('seating_capacity','S',''); 
	// }	

 var class_of_vehicle = jQuery('#class_of_vehicle').val();  
	// if (class_of_vehicle==null || class_of_vehicle==""){		     
 //        submircheak =1; 
	// 	setvalidation('class_of_vehicle','F',"Please insert class of vehicle");
 //     }else{			  
	// 	 setvalidation('class_of_vehicle','S',''); 
	// }	

 var tax_particulars = jQuery('#tax_particulars').val();  
	// if (tax_particulars==null || tax_particulars==""){		     
 //        submircheak =1; 
	// 	setvalidation('tax_particulars','F',"Please insert Tax particulars");
 //     }else{			  
	// 	 setvalidation('tax_particulars','S',''); 
	// }	

// close vehicle section
	
	var commercialVehicle = $('input:checkbox[name=commercialVehicle]').is(':checked');  

	if(commercialVehicle == true){
		var fitness_certificate = jQuery('#fitness_certificate').val();  
		if (fitness_certificate==null || fitness_certificate==""){		     
	        submircheak =1; 
			setvalidation('fitness_certificate','F',"Please insert fitness certificate");
	     }else{			  
			 setvalidation('fitness_certificate','S',''); 
		}

		var fitness_from_date = jQuery('#fitness_from_date').val();  
		if (fitness_from_date==null || fitness_from_date==""){		     
	        submircheak =1; 
			setvalidation('fitness_from_date','F',"Please insert fitness date");
	     }else{			  
			 setvalidation('fitness_from_date','S',''); 
		}

		var parmit_to_date = jQuery('#parmit_to_date').val();  
		if (parmit_to_date==null || parmit_to_date==""){		     
	        submircheak =1; 
			setvalidation('parmit_to_date','F',"Please insert fitness date");
	     }else{			  
			 setvalidation('parmit_to_date','S',''); 
		}

		var fitness_to_date = jQuery('#fitness_to_date').val();  
		if (fitness_to_date==null || fitness_to_date==""){		     
	        submircheak =1; 
			setvalidation('fitness_to_date','F',"Please insert fitness date");
	     }else{			  
			 setvalidation('fitness_to_date','S',''); 
		}

		var parmit_issued = jQuery('#parmit_issued').val();  
		if (parmit_issued==null || parmit_issued==""){		     
	        submircheak =1; 
			setvalidation('parmit_issued','F',"Please insert parmit");
	     }else{			  
			 setvalidation('parmit_issued','S',''); 
		}

		var parmit_from_date = jQuery('#parmit_from_date').val();  
		if (parmit_from_date==null || parmit_from_date==""){		     
	        submircheak =1; 
			setvalidation('parmit_from_date','F',"Please insert parmit date");
	     }else{			  
			 setvalidation('parmit_from_date','S',''); 
		}

		var parmit_to_date = jQuery('#parmit_to_date').val();  
		if (parmit_to_date==null || parmit_to_date==""){		     
	        submircheak =1; 
			setvalidation('parmit_to_date','F',"Please insert parmit date");
	     }else{			  
			 setvalidation('parmit_to_date','S',''); 
		}


		var type_of_parmit = jQuery('#type_of_parmit').val();  
		if (type_of_parmit==null || type_of_parmit==""){		     
	        submircheak =1; 
			setvalidation('type_of_parmit','F',"Please insert parmit type");
	     }else{			  
			 setvalidation('type_of_parmit','S',''); 
		}

		var authorization_validity = jQuery('#authorization_validity').val();  
		if (authorization_validity==null || authorization_validity==""){		     
	        submircheak =1; 
			setvalidation('authorization_validity','F',"Please insert authorization validity");
	     }else{			  
			 setvalidation('authorization_validity','S',''); 
		}
		var area_of_opration = jQuery('#area_of_opration').val();  
		if (area_of_opration==null || area_of_opration==""){		     
	        submircheak =1; 
			setvalidation('area_of_opration','F',"Please insert area of opration");
	     }else{			  
			 setvalidation('area_of_opration','S',''); 
		}

	}
 
	var remark_rlw = jQuery('#remark_rlw').val();  
	var remark_ulw = jQuery('#remark_ulw').val();
	var chassis_phy_checked = jQuery('#chassis_phy_checked').val();  
	var engine_phy_engine = jQuery('#engine_phy_engine').val();
	var master_vehicle_id = jQuery('#vehicle').val();  

	


    if(submircheak ==1){  
			   return false;
	}else{
		var report_vehicle_id = jQuery('#report_vehicle_id').val();   
		var report_id = jQuery('#report_id').val();
		//alert(report_vehicle_id); 
	    $.ajax({
		    method:'POST',
	        url: urls+"SpotReport/addVehicleDetails",
	        data: {
	         _token: $('#_token').val(),
	         report_id : report_id,
	         report_vehicle_id : report_vehicle_id,
	         master_vehicle_id : master_vehicle_id,
	         vehicle_type : 1,
	         vehicle_registration : vehicle_registration,
	         registered_owner : registered_owner,
	         owner_sr : owner_sr,
	         date_of_registration : date_of_registration,
	         date_of_date : date_of_date,
	         chassis : chassis,
	         chassis_phy_checked : chassis_phy_checked,
	         engine : engine,
	         engine_phy_engine : engine_phy_engine,
	         color : color,

	         make_variant_mod : make_variant_mod,
	         fuel_used : fuel_used,
	         type_fo_body : type_fo_body,
	         cubic_capacity : cubic_capacity,
	         accident_condition : accident_condition,
	         reg_laden_wt : reg_laden_wt,
	         unladen_wt : unladen_wt,
	         seating_capacity : seating_capacity,
	         class_of_vehicle : class_of_vehicle,
	         tax_particulars : tax_particulars,

	         odometer_reading : odometer_reading,
	         puc_details : puc_details,
	         puc_upto : puc_upto,
	         vehicle_remark : vehicle_remark, 
	         remark_rlw : remark_rlw,
	         remark_ulw : remark_ulw,
	         vehicle_remark : vehicle_remark,

	         fitness_certificate : fitness_certificate,
	         fitness_to_date : fitness_to_date,
	         fitness_from_date : fitness_from_date,
	         parmit_to_date : parmit_to_date,
	         parmit_from_date : parmit_from_date,
	         type_of_parmit : type_of_parmit,
	         authorization_validity : authorization_validity,
	         area_of_opration : area_of_opration,


	         report_type : 1,
	         report_status : 0,
	         reference_number:'HA/S/0001',
	    	 },
	        success: function(response)
	        { 
	        	var obj = jQuery.parseJSON(response);
	        	
	        	console.log('vehicle data inserted');

	        	$("#report_vehicle_id").val(obj.report_vehicle_id);
	        	registrationProcess('2');
		    }  
	    });
	}
}
function saveSpotDriverDetails(){
	var submircheak = 0 ;
	
	var driving_licence = jQuery('#driving_licence').val();   
	if (driving_licence==null || driving_licence==""){		     
        submircheak =1; 
		setvalidation('driving_licence','F',"Please insert Driving license details");
     }else{			  
		 setvalidation('driving_licence','S',''); 
	}
	var driver_name = jQuery('#driver_name').val();  
	if (driver_name==null || driver_name==""){		     
        submircheak =1; 
		setvalidation('driver_name','F',"Please insert driver name");
     }else{			  
		 setvalidation('driver_name','S',''); 
	}
	var driver_dob = jQuery('#driver_dob').val();  
	// if (driver_dob==null || driver_dob==""){		     
 //        submircheak =1; 
	// 	setvalidation('driver_dob','F',"Please insert driver date of birth");
 //     }else{			  
	// 	 setvalidation('driver_dob','S',''); 
	// }
	var issue_date = jQuery('#issue_date').val();  
	// if (issue_date==null || issue_date==""){		     
 //        submircheak =1; 
	// 	setvalidation('issue_date','F',"Please select issue date");
 //     }else{			  
	// 	 setvalidation('issue_date','S',''); 
	// }
	var valid_date = jQuery('#valid_date').val();  
	// if (valid_date==null || valid_date==""){		     
 //        submircheak =1; 
	// 	setvalidation('valid_date','F',"Please select valid date");
 //     }else{			  
	// 	 setvalidation('valid_date','S',''); 
	// }
	var issuing_authority = jQuery('#issuing_authority').val();  
	// if (issuing_authority==null || issuing_authority==""){		     
 //        submircheak =1; 
	// 	setvalidation('issuing_authority','F',"Please insert issuing authority details");
 //     }else{			  
	// 	 setvalidation('issuing_authority','S',''); 
	// }
	var licence_type = jQuery('#licence_type').val();  
	// if (licence_type==null || licence_type==""){		     
 //        submircheak =1; 
	// 	setvalidation('licence_type','F',"Please select license type");
 //     }else{			  
	// 	 setvalidation('licence_type','S',''); 
	// }
	var badge = jQuery('#badge').val();  
	// if (badge==null || badge==""){		     
 //        submircheak =1; 
	// 	setvalidation('badge','F',"Please insert badge details");
 //     }else{			  
	// 	 setvalidation('badge','S',''); 
	// }
	
	var driver_remark = jQuery('#driver_remark').val();  
	// if (driver_remark==null || driver_remark==""){		     
 //        submircheak =1; 
	// 	setvalidation('driver_remark','F',"Please insert remark details");
 //     }else{			  
	// 	 setvalidation('driver_remark','S',''); 
	// }

    if(submircheak ==1){  
			   return false;
	}else{

		var report_driver_id = jQuery('#report_driver_id').val();   
		var report_id = jQuery('#report_id').val();
		
	    $.ajax({
		    method:'POST',
	        url: urls+"SpotReport/addDriverDetails",
	        data: {
	         _token: $('#_token').val(),
	         report_id : report_id,
	         report_driver_id : report_driver_id,
	         driving_licence : driving_licence,
	         driver_name : driver_name,
	         date_of_birth : driver_dob,
	         issue_date : issue_date,
	         valid_from : valid_date,
	         issuing_authority : issuing_authority,
	         licence_type : licence_type,
	         badge : badge,
	         remark : driver_remark
	         },
	        success: function(response)
	        { 
	        	var obj = jQuery.parseJSON(response);
	        	
	        	console.log('driver data inserted');

	        	$("#report_driver_id").val(obj.report_driver_id);

	        	var redirect_url = urls+"SpotReport/survey-report/"+report_id;

	        	$('#survey_tab').attr("href", redirect_url);
				//alert(redirect_url);

	        	window.location.href = redirect_url;
	        	//registrationProcess('3');
		    }  
	    });
	}	
}
function saveCommercialVehicleDetails(){
	//alert('fdsfd'); 
	// $("#policy_tab").removeClass('active');
	// $("#survey_tab").addClass('active');
	


    $('.nav-pills .active').parent().next('li').find('button').trigger('click');


// $('.btnPrevious').click(function() {
//     $('.nav-pills .active').parent().prev('li').find('a').trigger('click');
// });
	//$("#list_tab_"+next).addClass("active");

}



function saveSpotSurveyReport(report_id){


	var submircheak = 0 ;

	var date_of_accident = jQuery('#date_of_accident').val();  
	if (date_of_accident==null || date_of_accident==""){		     
        submircheak =1; 
		setvalidation('date_of_accident','F',"Please insert Date of Accident ");
     }else{			  
		 setvalidation('date_of_accident','S',''); 
	}
		
		var time_of_accident = jQuery('#time_of_accident').val();  
	if (time_of_accident==null || time_of_accident==""){		     
        submircheak =1; 
		setvalidation('time_of_accident','F',"Please insert Time of Accident");
     }else{			  
		 setvalidation('time_of_accident','S',''); 
	}



	var place_of_accident = jQuery('#place_of_accident').val();  
	// if (place_of_accident==null || place_of_accident==""){		     
 //        submircheak =1; 
	// 	setvalidation('place_of_accident','F',"Please insert place of accident");
 //     }else{			  
	// 	 setvalidation('place_of_accident','S',''); 
	// }

	var vehicle_shifted_to = jQuery('#vehicle_shifted_to').val();  
	// if (vehicle_shifted_to==null || vehicle_shifted_to==""){		     
 //        submircheak =1; 
	// 	setvalidation('vehicle_shifted_to','F',"Please insert details");
 //     }else{			  
	// 	 setvalidation('vehicle_shifted_to','S',''); 
	// }

	var parson_available_on_spot = jQuery('#parson_available_on_spot').val();  
	// if (parson_available_on_spot==null || parson_available_on_spot==""){		     
 //        submircheak =1; 
	// 	setvalidation('parson_available_on_spot','F',"Please insert details");
 //     }else{			  
	// 	 setvalidation('parson_available_on_spot','S',''); 
	// }

	var parmit_to_date = jQuery('#parmit_to_date').val();  
	// if (parmit_to_date==null || parmit_to_date==""){		     
 //        submircheak =1; 
	// 	setvalidation('parmit_to_date','F',"Please insert details");
 //     }else{			  
	// 	 setvalidation('parmit_to_date','S',''); 
	// }

	var allotment_date = jQuery('#allotment_date').val();  
	// if (allotment_date==null || allotment_date==""){		     
 //        submircheak =1; 
	// 	setvalidation('allotment_date','F',"Please insert details");
 //     }else{			  
	// 	 setvalidation('allotment_date','S',''); 
	// }

	var inspection = jQuery('#inspection').val();  
	// if (inspection==null || inspection==""){		     
 //        submircheak =1; 
	// 	setvalidation('inspection','F',"Please insert inspection details");
 //     }else{			  
	// 	 setvalidation('inspection','S',''); 
	// }

	var police_action = jQuery('#police_action').val();  
	// if (police_action==null || police_action==""){		     
 //        submircheak =1; 
	// 	setvalidation('police_action','F',"Please insert details");
 //     }else{			  
	// 	 setvalidation('police_action','S',''); 
	// }

	var name_of_police_satation = jQuery('#name_of_police_satation').val();  
	// if (name_of_police_satation==null || name_of_police_satation==""){		     
 //        submircheak =1; 
	// 	setvalidation('name_of_police_satation','F',"Please insert details");
 //     }else{			  
	// 	 setvalidation('name_of_police_satation','S',''); 
	// }

	var satation_dairy_no = jQuery('#satation_dairy_no').val();  
	// if (satation_dairy_no==null || satation_dairy_no==""){		     
 //        submircheak =1; 
	// 	setvalidation('satation_dairy_no','F',"Please insert details");
 //     }else{			  
	// 	 setvalidation('satation_dairy_no','S',''); 
	// }

	var nature_of_goods = jQuery('#nature_of_goods').val();  
	// if (nature_of_goods==null || nature_of_goods==""){		     
 //        submircheak =1; 
	// 	setvalidation('nature_of_goods','F',"Please insert details");
 //     }else{			  
	// 	 setvalidation('nature_of_goods','S',''); 
	// }

	var Goods_caried = jQuery('#Goods_caried').val();  
	// if (Goods_caried==null || Goods_caried==""){		     
 //        submircheak =1; 
	// 	setvalidation('Goods_caried','F',"Please insert details");
 //     }else{			  
	// 	 setvalidation('Goods_caried','S',''); 
	// }

	var origin_destination = jQuery('#origin_destination').val();  
	// if (origin_destination==null || origin_destination==""){		     
 //        submircheak =1; 
	// 	setvalidation('origin_destination','F',"Please insert details");
 //     }else{			  
	// 	 setvalidation('origin_destination','S',''); 
	// }

	var lr_invoice_no = jQuery('#lr_invoice_no').val();  
	// if (lr_invoice_no==null || lr_invoice_no==""){		     
 //        submircheak =1; 
	// 	setvalidation('lr_invoice_no','F',"Please insert details");
 //     }else{			  
	// 	 setvalidation('lr_invoice_no','S',''); 
	// }

	var transporter_no = jQuery('#transporter_no').val();  
	// if (transporter_no==null || transporter_no==""){		     
 //        submircheak =1; 
	// 	setvalidation('transporter_no','F',"Please insert details");
 //     }else{			  
	// 	 setvalidation('transporter_no','S',''); 
	// }

	var no_of_passangers = jQuery('#no_of_passangers').val();  
	// if (no_of_passangers==null || no_of_passangers==""){		     
 //        submircheak =1; 
	// 	setvalidation('no_of_passangers','F',"Please insert details");
 //     }else{			  
	// 	 setvalidation('no_of_passangers','S',''); 
	// }

	var tp_vehicle_details = jQuery('#tp_vehicle_details').val();  
	// if (tp_vehicle_details==null || tp_vehicle_details==""){		     
 //        submircheak =1; 
	// 	setvalidation('tp_vehicle_details','F',"Please insert details");
 //     }else{			  
	// 	 setvalidation('tp_vehicle_details','S',''); 
	// }

	var tp_death_injuri_details = jQuery('#tp_death_injuri_details').val();  
	// if (tp_death_injuri_details==null || tp_death_injuri_details==""){		     
 //        submircheak =1; 
	// 	setvalidation('tp_death_injuri_details','F',"Please remark details");
 //     }else{			  
	// 	 setvalidation('tp_death_injuri_details','S',''); 
	// }

	var death_tp_vehicle_details = jQuery('#death_tp_vehicle_details').val();  
	// if (death_tp_vehicle_details==null || death_tp_vehicle_details==""){		     
 //        submircheak =1; 
	// 	setvalidation('death_tp_vehicle_details','F',"Please insert details");
 //     }else{			  
	// 	 setvalidation('death_tp_vehicle_details','S',''); 
	// }

	var third_party_property_damages = jQuery('#third_party_property_damages').val();  
	// if (third_party_property_damages==null || third_party_property_damages==""){		     
 //        submircheak =1; 
	// 	setvalidation('third_party_property_damages','F',"Please insert details");
 //     }else{			  
	// 	 setvalidation('third_party_property_damages','S',''); 
	// }

	//var date_of_accident = jQuery('#date_of_accident').val();  
	//var time_of_accident = jQuery('#time_of_accident').val();  
	var cousenature = jQuery('textarea#cousenature').val(); 

	var survey_id = jQuery('#survey_id').val();  

    if(submircheak ==1){  
			   return false;
	}else{

   
        $.ajax({
            method:'POST',
            url: urls+"SpotReport/saveSurveyInfo",
            data: {
             _token: $('#_token').val(),
             survey_id : survey_id,
             report_id : report_id,
             place_of_accident : place_of_accident,
             vehicle_shifted_to : vehicle_shifted_to,
             parson_available_on_spot : parson_available_on_spot,
             parmit_to_date : parmit_to_date,
             allotment_date : allotment_date,
             inspection 	: inspection,
             police_action : police_action,
             name_of_police_satation : name_of_police_satation,
             satation_dairy_no : satation_dairy_no,
             nature_of_goods : nature_of_goods,
             Goods_caried : Goods_caried, 
             date_of_accident : date_of_accident, 
             time_of_accident : time_of_accident, 
             origin_destination : origin_destination,
             lr_invoice_no : lr_invoice_no,
             transporter_no : transporter_no,
             cousenature : cousenature,
             no_of_passangers : no_of_passangers,
             tp_vehicle_details : tp_vehicle_details,
             tp_death_injuri_details : tp_death_injuri_details,
             death_tp_vehicle_details : death_tp_vehicle_details,
             third_party_property_damages : third_party_property_damages,
             },
            success: function(response)
            { 
                var obj = jQuery.parseJSON(response);
                $("#survey_id").val(obj.survey_id);
                var redirect_url = urls+"SpotReport/damages-report/"+report_id;
                window.location.href = redirect_url;
            }  
        });








	  // var redirect_url = urls+"SpotReport/damages-report/"+report_id;
     	//$('#survey_tab').attr("href", redirect_url);
		//alert(redirect_url);

       	//window.location.href = redirect_url;
	}	
}

// notes and remark section code

function saveSpotNotesRemark(report_id){
 
	var submircheak = 0;

	var remark_damages = jQuery('#remark_damages').val();  
	// if (remark_damages==null || remark_damages==""){		     
 //        submircheak =1; 
	// 	setvalidation('remark_damages','F',"Please insert Remark damages");
 //     }else{			  
	// 	 setvalidation('remark_damages','S',''); 
	// }


		var notes = jQuery('#notes').val();  
	// if (notes==null || notes==""){		     
 //        submircheak =1; 
	// 	setvalidation('notes','F',"Please insert Notes");
 //     }else{			  
	// 	 setvalidation('notes','S',''); 
	// }



	   var endclosers = jQuery('#endclosers').val();  
	if (endclosers==null || endclosers==""){		     
        submircheak =1; 
		setvalidation('endclosers','F',"Please insert Endclosers");
     }else{			  
		 setvalidation('endclosers','S',''); 
	}


		var remarks = jQuery('#remarks').val();  
	// if (remarks==null || remarks==""){		     
 //        submircheak =1; 
	// 	setvalidation('remarks','F',"Please insert Remarks");
 //     }else{			  
	// 	 setvalidation('remarks','S',''); 
	// }

	//var survey_id = jQuery('#survey_id').val();  
    if(submircheak ==1){  
	    return false;
	}else{

   
        $.ajax({
            method:'POST',
            url: urls+"SpotReport/save-notes-remark-report",
            data: {
             _token: $('#_token').val(),
             report_id : report_id,
             remark_damages : remark_damages,
             notes : notes,
             endclosers : endclosers,
             remarks : remarks,

             },
            success: function(response)
            {   
                var obj = jQuery.parseJSON(response);
                if (obj.msg == 'success') {
                  $('#showMsg').show();
            	  $("#showMsg").delay(3000).slideUp(300);
            	    element.form.reset();
            	  //$('#notesReportRemarkForm')[0].reset();

                }
            
                 // console.log(obj.masges); return false;
                // $("#survey_id").val(obj.survey_id);
                // var redirect_url = urls+"SpotReport/damages-report/"+report_id;
                // window.location.href = redirect_url;
            }  
        });

	}	
}



function saveSpotDamageReport(report_id){
	var submitcheak = 0 ;

	var part = $("input[name='part[]']")
              .map(function(){return $(this).val();}).get();
//console.log(parseJSON(part)); return false;
 	// if (part==null || part==""){		     
 //        submitcheak =1; 
	// 	setvalidation('part','F',"Please select Part");
 //     }else{			  
	// 	 setvalidation('part','S',''); 
	// }
	var select2Multiple = jQuery('#select2Multiple').val();  
	if (select2Multiple==null || select2Multiple==""){		     
        submitcheak =1; 
		setvalidation('select2Multiple','F',"Please select SubPart");
     }else{			  
		 setvalidation('select2Multiple','S',''); 
	}
	var description = jQuery('#description').val();  
	if (description==null || description==""){		     
        submitcheak =1; 
		setvalidation('description','F',"Please enter description");
     }else{			  
		 setvalidation('description','S',''); 
	}

	var damage_id = jQuery('#damage_id').val();

    if(submitcheak ==1){  
			   return false;
	}else{

		$.ajax({
            method:'POST',
            url: urls+"SpotReport/save-damages-report/"+report_id,
            data: {
             _token: $('#_token').val(),
             report_id : report_id,
             damage_id : damage_id,
             part : part,
             subPart : select2Multiple,
             description : description
            },
            success: function(response)
            {   
                var obj = jQuery.parseJSON(response);
               //  if (obj.msg == 'success') {
               //    $('#showMsg').show();
            	  // $("#showMsg").delay(3000).slideUp(300);
            	  //   element.form.reset();
            	  // //$('#notesReportRemarkForm')[0].reset();

               //  }
            
                  console.log(response); return false;
                $("#damage_id").val(obj.damage_id);
                var redirect_url = urls+"SpotReport/notes-remark-report/"+report_id;
               // window.location.href = redirect_url;
            }  
        });

	   // var redirect_url = urls+"SpotReport/notes-remark-report/"+report_id;
    //    window.location.href = redirect_url;
	}	
}
function saveSurveyAccidentDetails(){
	var submircheak = 0 ;
    if(submircheak ==1){  
			   return false;
	}else{
	   spotProcessSurvey('1');
	}	
}

function saveSurveyCouseDetails(){
	var submircheak = 0 ;
    if(submircheak ==1){  
			   return false;
	}else{
	   spotProcessSurvey('2');
	}	
}

function saveSurveyLoadChallan(){
	var submircheak = 0 ;
    if(submircheak ==1){  
			   return false;
	}else{
	   spotProcessSurvey('3');
	}	
}

function saveSurveyThirdParty(){
	var submircheak = 0 ;
    if(submircheak ==1){  
			   return false;
	}else{
	   //spotProcessSurvey('3');
	   $('.nav-pills .active').parent().next('li').find('button').trigger('click');
	}	
}

function spotProcessSurvey(srt){
	var next = parseInt(srt)+1;
	$("#list_tab_content_survey_"+srt).hide();
	$("#list_tab_survey_"+next).addClass("active");
	$("#list_tab_content_survey_"+next).show();
} 

function spotProcessSurveyBack(srt){
	var next = parseInt(srt)-1;
	$("#list_tab_survey_"+srt).removeClass("active");
	$("#list_tab_content_survey_"+srt).hide();
	$("#list_tab_content_survey_"+next).show();
} 




function insurerBranch(insurer){
 var insurerID = insurer.value;
 $("#insurer_branch").html(''); 

              $.ajax({
                    url: urls+'Master/fetch-insurer-branch',
                    type: "POST",
                    data: {
				         _token: $('#_token').val(),
				         id : insurerID 
				    	 },
                    success: function (response) {
                     // console.log(response.cities); return false;
                      $('#insurer_branch').html('<option value="">Select</option>');
                        $.each(response.branch_list, function (key, value) {
                            $("#insurer_branch").append('<option value="' + value
                                .branch_id + '">' + value.branch_name + '</option>');
                        });
                        $("#insurer_branch").append('<option value="' + value
                                .branch_id + '">' + value.branch_name + '</option>');
                    }
                });

}

function subParts(part,partKey){
 var part_id = part.value;
 $(".subparts-"+partKey).html(''); 
              $.ajax({
                    url: urls+'Master/fetch-subpart',
                    type: "POST",
                    data: {
				         _token: $('#_token').val(),
				         id : part_id 
				    	 },
                    success: function (response) {
                        $('.subparts-'+partKey).html('<option value="">Select</option>');
                        $.each(response.subpart_list, function (key, value) {
                            $(".subparts-"+partKey).append('<option value="' + value
                                .subpart_id + '">' + value.subpart_name + '</option>');
                        });

                    }
                });
}


function vehicleData(srt){
	 var vehicleID = srt.value;
	$.ajax({
	    type: "POST",
        url: urls+"Master/fetch-vehicle-details",
        data: {
         _token: $('#_token').val(),
         id : vehicleID 
    	 },
        dataType:"html",
        success: function(msg)
        { 
            var obj = jQuery.parseJSON(msg);
            var vehicle_details = obj.vehicle_details;
			
			$("#fuel_used").val(vehicle_details.Fuel_used);
			$("#make_variant_mod").val(vehicle_details.make_and_model);
			$("#type_fo_body").val(vehicle_details.body_type);
			$("#cubic_capacity").val(vehicle_details.cubic_capacity);
			$("#accident_condition").val(vehicle_details.pre_accident_con);
			
			$("#reg_laden_wt").val(vehicle_details.reg_laden_wt);
			$("#seating_capacity").val(vehicle_details.seating_capacity);
			$("#tax_particulars").val(vehicle_details.tax_particulers);
			$("#unladen_wt").val(vehicle_details.unladen_wt);
			$("#class_of_vehicle").val(vehicle_details.vehicle_class);

		}  
    });
}


$(document).ready(function(){
    $(".addCF").click(function(){
		var rowCount = $('#accidental-add-more .row').length + 1;
    	//var selectClone = $('.mySelect:last').clone();
    	var selectClone = $('#accidental-add-more #part').clone().html();
    	//console.log(selectClone);
    	$("#accidental-add-more").append('<div class="row"><div class="col-md-12 col-lg-2"><div class="mb-3"><label for="part" class="form-label">Part:</label><select id="part" class="form-select" name="part[]" onchange="subParts(this,'+rowCount+')">'+selectClone+'</select><p class="error" id="err_part"></p></div></div><div class="col-md-12 col-lg-4"><div class="mb-3"><label for="select2Multiple" class="form-label">Sub Part:</label><select class="select2 form-select subparts-'+rowCount+'" name="subPart[]" id="select2Multiple" multiple><option>Select</option></select><p class="error" id="err_select2Multiple"></p></div></div><div class="col-md-12 col-lg-5"><div class="py-3"><label for="description" class="form-label">Description of Damages:</label><textarea id="description" name="description" class="form-select"></textarea></div></div><div class="col-md-12 col-lg-1"><div class="mb-3"><button type="button" class="btn rounded-pill btn-icon btn-outline-primary remCF"> <span class="tf-icons bx bx-minus"></span></button></div></div></div>');
    });
    $("#accidental-add-more").on('click','.remCF',function(){
        $(this).parent().parent().parent().remove();
    });
});


function editSubscriptionsPlanInfo(srt){
    $.ajax({
        type: "POST",
        url: urls+"Home/subscriptionsPlanInfo", 
        data: {
         _token: $('#_token').val(),
         subscription_id : srt 
         },
        dataType:"html", 
        success: function(msg)
        { 
            var obj = jQuery.parseJSON(msg);
            $("#subscription_plan_id").val(obj.subscription_plans.subscription_plan_id);
            $("#subscription_title").val(obj.subscription_plans.subscription_titles);
            $("#subscription_price").val(obj.subscription_plans_info.subscription_price);
            $("#number_of_surey").val(obj.subscription_plans_info.number_of_surey);
            $("#number_of_days").val(obj.subscription_plans_info.number_of_days);
            $('#editSubecriptionsPlanInfo').modal('show');
        }  
    });
}


function updateSubscriptionsPlanInfo(){ 
   var submircheak = 0 ;
    
    var subscription_title = jQuery('#subscription_title').val();   
    if (subscription_title==null || subscription_title==""){           
        submircheak =1; 
        setvalidation('subscription_title','F',"Please insert Subscription title");
     }else{           
         setvalidation('subscription_title','S',''); 
    }
    var subscription_price = jQuery('#subscription_price').val();  
    if (subscription_price==null || subscription_price==""){           
        submircheak =1; 
        setvalidation('subscription_price','F',"Please insert Subscription Price");
     }else{           
         setvalidation('subscription_price','S',''); 
    }
    
    var number_of_surey = jQuery('#number_of_surey').val();  
    if (number_of_surey==null || number_of_surey==""){           
        submircheak =1; 
        setvalidation('number_of_surey','F',"Please insert number of surey");
     }else{           
         setvalidation('number_of_surey','S',''); 
    }

    if(submircheak ==1){  
               return false;
    }else{
            $('#updatePlan').hide();
            $('#waiteAdminButtons').show();
            $('#updatePlanInfo').submit();

    }  
}
 

