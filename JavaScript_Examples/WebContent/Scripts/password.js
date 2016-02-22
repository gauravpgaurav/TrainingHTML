//document.getElementById("btn1").addEventListener("click",equalPass);
document.getElementById("pass1").addEventListener("keyup",equalPass);
document.getElementById("pass2").addEventListener("keyup",equalPass);

    var pass1 = document.getElementById("pass1");
    var pass2 = document.getElementById("pass2");
    var result = document.getElementById("result");

function equalPass(){

    console.log(pass1.value+pass2.value);
    
    if(pass1.value==pass2.value)
   {
       lengPass();
   }
    else{
        result.innerHTML="Password Mismatch !";
        result.style.background="white";
        result.style.color="Red";
    }
}

function lengPass(){
    
    var pass = pass1.value;
    if(pass.length>=3)
        {
             result.innerHTML="Approved !";
            result.style.background="white";
            result.style.color="Green";
        }
    else
        {
            result.innerHTML="Weak !";
            result.style.background="Black";
            result.style.color="Yellow";
        }
}