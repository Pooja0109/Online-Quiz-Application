function disp_time()
{   
    min=10
    sec=60
    document.getElementById("timer").innerHTML=min+":00";
    min=min-1;
    myInterval=setInterval(function()
    {
        sec=sec-1;
        if(sec==0)
        {
            sec=60;
            min=min-1;
        }
        if(sec<10 && min<10)
            document.getElementById("timer").innerHTML=+"0"+min+":"+"0"+sec;
        else
        {
            if(sec<10)
            document.getElementById("timer").innerHTML=min+":"+"0"+sec;
            if(min<10)
            document.getElementById("timer").innerHTML="0"+min+":"+sec;   
        }
        },1000)
}
setTimeout(
    function()
    {
        clearInterval(myInterval)
        document.getElementById("timer").innerHTML="00:00";
        document.location.href="ResultsChart.jsp"
    },600055)
    
 function prevnext(i) 
{
    var tabs = document.getElementsByClassName("question");
    tabs[ctab].style.display = "none";
    ctab = ctab + i;
    if (ctab >= tabs.length) 
    {
        document.getElementById("regform").submit(); //this point i should redirect to the result page.
        return false;
    }

    showtab(ctab);
}

function showtab(t) {
    var tabs = document.getElementsByClassName("question");
    console.log("tabs one:",tabs[t])
    tabs[t].style.display = "block";

    if (t == 0)
        document.getElementById("prev").style.visibility = "hidden";
    else
    	document.getElementById("prev").style.visibility = "visible";
        document.getElementById("prev").style.display = "inline";


    if (t == (tabs.length - 1)) 
    {
        document.getElementById("next").style.display= "none";
        document.getElementById("sub").style.display= "block";
        document.getElementById("next").style.textAlign = "center";
    }
    /*else if(t == (tabs.length - 2))
    {
    	 document.getElementById("next").style.display= "block";
         document.getElementById("sub").style.display= "none";
         document.getElementById("next").style.textAlign = "center";
    }*/
    else 
    {
        document.getElementById("next").innerHTML = "Next";
    }
    

}
function SubmitResult()
{
//    alert("your response is collected")
//    document.getElementById("next").style.display= "none";
//    document.getElementById("prev").style.display= "none";
//    document.getElementById("sub").style.display= "block";
	form=document.getElementById("regform");
	alert("Your form is successfully submited");
	form.submit();
	document.location.href="ResultsChart.jsp"
}


//Validating Register page
    
function validateuser() {
    var userpatt = /[A-Z](?=.*[A-z])(?=.*[0-9])/;
    var err = document.getElementById("nameerror");
    var user = document.getElementById("username").value;
 
    if (user.match(userpatt)) {
        username.className = "valid";
        err.innerHTML = "";
      
    }
    else {
        username.className = "invalid";
        err.style.color = "red";
        err.innerHTML = "Username should be alphanumeric and begin with uppercase";
    }
}
function validatepass() {
    var patt = /((?=.*[A-z])(?=.*\d)(?=.*(\$|_))).{7}$/;
    var err = document.getElementById("passerror");
    var pass = document.getElementById("password").value;
    
    if (pass.match(patt))
    {
        password.className = "valid";
        err.innerHTML = "";
    }
    else {
        password.className = "invalid";
        err.style.color = "red";
        err.innerHTML = "Password must be of atleast 7 characters with atleast 1 digit, 1 special character ($/_)";
    }
}

function validatecpass()
{
    var cpass=document.getElementById("cpassword").value;
    var pass=document.getElementById("password").value;
    var err=document.getElementById("cpasserror");
    if(cpass==pass)
        {
            cpassword.className = "valid";
            err.innerHTML = "";
        }
        else
        {
            cpassword.className = "invalid";
            err.style.color = "red";
            err.innerHTML = "Passwords doesn't match!!";
        }
}

function validate_email() {
    var emailid = document.getElementById("email").value;
    var err = document.getElementById("emailerror");
    var patt = /[A-z0-9\.]+@dedalus.eu/;
    if (emailid.match(patt))
    {
        email.className = "valid";
        err.innerHTML = "";
        System.out.println("Yes");
    }
    else {
        email.className = "invalid";
        err.style.color = "red";
        err.innerHTML = "Enter valid Learner ID";
        System.out.println("No");
    }
}



function validatephone() {
    var patt = /(^\d{10}$)/;
    var err = document.getElementById("phoneerror");
    var ph = document.getElementById("phone").value;
  
    if (ph.match(patt)) {
        phone.className = "valid";
        err.innerHTML = "";
    }
    else {
        phone.className = "invalid";
        err.style.color = "red";
        err.innerHTML = "Enter valid phone number";
    }
}
