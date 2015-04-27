$("#Edit").click(function(){

document.getElementById('light').style.display='block';
document.getElementById('fade').style.display='block';


});

$("#Save").click(function(){

var ProfileName = document.getElementById('ProfileName');
var ProfileEMPI = document.getElementById('ProfileEMPI');
var ProfileQualification = document.getElementById('ProfileQualification');
var ProfileEmail = document.getElementById('ProfileEmail');
var ProfileAddress = document.getElementById('ProfileAddress');
var ProfileDept = document.getElementById('ProfileDept');

var NewName = document.getElementById('NewName');
var NewEMPI = document.getElementById('NewEMPI');
var NewEmail = document.getElementById('NewEmail');
var NewAddress = document.getElementById('NewAddress');
var NewDept = document.getElementById('NewDept');
var NewQualification = document.getElementById('NewQualification');


ProfileName.innerHTML=NewName.value;
ProfileEMPI.innerHTML=NewEMPI.value;
ProfileEmail.innerHTML=NewEmail.value;
ProfileAddress.innerHTML=NewAddress.value;
ProfileDept.innerHTML=NewDept.value;
ProfileQualification.innerHTML=NewQualification.value;


NewName.value="";
NewEMPI.value="";
NewEmail.value="";
NewAddress.value="";
NewDept.value="";
NewQualification.value="";


document.getElementById('light').style.display='none';
document.getElementById('fade').style.display='none';


});
$("#Cancel").click(function(){

NewName.value="";
NewEMPI.value="";
NewEmail.value="";
NewAddress.value="";
NewDept.value="";
NewQualification.value="";


document.getElementById('light').style.display='none';
document.getElementById('fade').style.display='none';



});