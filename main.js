//date validation
var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; //January is 0!
var yyyy = today.getFullYear();
 if(dd<10){
        dd='0'+dd
    } 
    if(mm<10){
        mm='0'+mm
    } 
today = yyyy+'-'+mm+'-'+dd;
document.getElementById("dob").setAttribute("max", today);
console.log(today);
    
//Address character counter
function textCounter(field,field2,maxlimit)
{
 var countfield = document.getElementById(field2);
 if ( field.value.length > maxlimit ) {
  field.value = field.value.substring( 0, maxlimit );
  return false;
 } else {
  countfield.value = maxlimit - field.value.length;
 }
}

//Validation for holiday plan form
function holidayplan(a){
    var nameexp=/^[a-zA-Z]+$/;
    var emailexp=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    var phoneexp=/^([+]{1}[0-9]{1,3}|[0]{1}){1,4}[-]?[7-9]{1}[0-9]{9}$/;
    if(a.id == 'hname'){
        // console.log(a.value);
        var hname = a.value;
        if(hname!=''){
            // console.log('entered');
            // console.log(hname);
            if(nameexp.test(hname) == false){
                    // console.log('yes');
                    alert('Invalid name');
                    a.value='';
                    // console.log(hname.value);
                    // console.log(nameexp.test(hname.value));
            }
    }
    }
    else if(a.id == 'h_email'){
        var h_email=a.value;
        if(h_email!=''){
        if(emailexp.test(h_email) == false){
            alert("Invalid email");
            a.value='';
        }
    }
    
    }
    else if(a.id == "h_phone"){
        var h_phone = a.value;
        if(h_phone!=''){
        if(phoneexp.test(h_phone) == false){
            alert("Invalid phone no");
            a.value='';
        }
    }
    }
    else if(a.id == "h_dest"){
        var h_dest = a.value;
        if(h_dest!=''){
        if(nameexp.test(h_dest) == false){
            alert("Invalid data entered for destination type");
            a.value='';
            
        }
    }

    }
}
    
//Validation for signup form
function signupvalidate(a){
    var nameexp=/^[a-zA-Z]+$/;
    var emailexp=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    var phoneexp=/^([+]{1}[0-9]{1,3}|[0]{1}){1,4}[-]?[7-9]{1}[0-9]{9}$/;;
    var addressexp=/[!@$%^&*.?":|<>]/;
    if(a.id == 'name'){
         var name = a.value;
        if(name!=''){
             console.log('entered');
            // console.log(hname);
            if(nameexp.test(name) == false){
                     // console.log('yes');
                     document.getElementById("namealert").hidden=false;
                    document.getElementById('namealert').innerHTML='Invalid name';
                    document.getElementById("namealert").style.color = "red";
                    document.getElementById("namealert").style.position = "absolute";
                    document.getElementById("namealert").style.fontSize = "small";
                    // a.value = "";
                    // console.log(nameexp.test(hname.value));
            }
            else{
                    // console.log('yes');
                    
                    document.getElementById("namealert").hidden=true;
                    
                    // console.log(hname.value);
                    // console.log(nameexp.test(hname.value));
            }
    }
    else{
        document.getElementById("namealert").hidden=true;
    }
    }
    if(a.id == 'email'){
            var email = a.value;
        if(email!=''){
             // console.log('entered');
            // console.log(hname);
            if(emailexp.test(email) == false){
                     // console.log('yes');
                     document.getElementById("emailalert").hidden=false;
                    document.getElementById('emailalert').innerHTML='Invalid email';
                    document.getElementById("emailalert").style.color = "red";
                    document.getElementById("emailalert").style.position = "absolute";
                    document.getElementById("emailalert").style.fontSize = "small";
                    // a.value = "";
                    // console.log(nameexp.test(hname.value));
            }
            else{
                    // console.log('yes');
                    
                    document.getElementById("emailalert").hidden=true;
                    
                    // console.log(hname.value);
                    // console.log(nameexp.test(hname.value));
            }
    }
    else{
        document.getElementById("emailalert").hidden=true;
    }
    }
    if(a.id == 'phoneno'){
           var phoneno = a.value;
        if(phoneno!=''){
             // console.log('entered');
            // console.log(hname);
            if(phoneexp.test(phoneno) == false){
                    // console.log('yes');
                    document.getElementById("phonealert").hidden=false;
                    document.getElementById('phonealert').innerHTML='Invalid phoneno,please follow format';
                    document.getElementById("phonealert").style.color = "red";
                    document.getElementById("phonealert").style.position = "absolute";
                    document.getElementById("phonealert").style.fontSize = "small";
                    // a.value = "";
                    // console.log(nameexp.test(hname.value));
            }
            else{
                    // console.log('yes');
                    
                    document.getElementById("phonealert").hidden=true;
                    
                    // console.log(hname.value);
                    // console.log(nameexp.test(hname.value));
            }
    } 
    else{
        document.getElementById("phonealert").hidden=true;
    }
    }
    if(a.id == 'address'){
             var address = a.value;
        if(address!=''){
             // console.log('entered');
            // console.log(hname);
            if(addressexp.test(address) == true){
                     console.log('yes');
                     document.getElementById("addressalert").hidden=false;
                    document.getElementById('addressalert').innerHTML='Invalid usage of special characters';
                    document.getElementById("addressalert").style.color = "red";
                    document.getElementById("addressalert").style.position = "absolute";
                    document.getElementById("addressalert").style.fontSize = "small";
                    // a.value = "";
                    // console.log(nameexp.test(hname.value));
            }
            else{
                    // console.log('yes');
                    
                    document.getElementById("addressalert").hidden=true;
                    
                    // console.log(hname.value);
                    // console.log(nameexp.test(hname.value));
            }
    } 
    else{
        document.getElementById("addressalert").hidden=true;
    }
    }
    if(a.id == 'states'){
        var selstate=a.options[a.selectedIndex].value;
        if(selstate==0){
            document.getElementById("statealert").hidden=false;
            document.getElementById('statealert').innerHTML='Please select a state';
            document.getElementById("statealert").style.color = "red";
            document.getElementById("statealert").style.position = "absolute";
            document.getElementById("statealert").style.fontSize = "small";
        }
        else{
            document.getElementById("statealert").hidden=true;
        }
    }
    if(a.id == 'confirm_password'){
        var password = document.getElementById("password");
          if(password.value != a.value) {
            document.getElementById("passwordalert").hidden=false;
            document.getElementById('passwordalert').innerHTML='Passwords dont match';
            document.getElementById("passwordalert").style.color = "red";
            document.getElementById("passwordalert").style.position = "absolute";
            document.getElementById("passwordalert").style.fontSize = "small";
       } else {
         document.getElementById("passwordalert").hidden=true;
       }  
    }

}
    
    
    
        
