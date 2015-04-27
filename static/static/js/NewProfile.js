$("#createAcc").click(function(){

document.getElementById('light').style.display='block';
document.getElementById('fade').style.display='block';


});
//THIS SECTION IS BASICALLY A STUB. 
//The idea was to map it to profile directly until backend & db implementation
$("#Save").click(function(){

var ProfileName = document.getElementById('ProfileName');
var ProfileUSN = document.getElementById('ProfileUSN');
var ProfileEmail = document.getElementById('ProfileEmail');
var ProfileAddress = document.getElementById('ProfileAddress');

var NewName = document.getElementById('NewName');
var NewUSN = document.getElementById('NewUSN');
var NewEmail = document.getElementById('NewEmail');
var NewAddress = document.getElementById('NewAddress');

ProfileName.innerHTML=NewName.value;
ProfileUSN.innerHTML=NewUSN.value;
ProfileEmail.innerHTML=NewEmail.value;
ProfileAddress.innerHTML=NewAddress.value;
ProfileDept.innerHTML=NewDept.value;
ProfileAOI.innerHTML=NewAOI.value;

NewName.value="";
NewUSN.value="";
NewEmail.value="";
NewAddress.value="";

document.getElementById('light').style.display='none';
document.getElementById('fade').style.display='none';


});
$("#Cancel").click(function(){

NewName.value="";
NewUSN.value="";
NewEmail.value="";
NewAddress.value="";

document.getElementById('light').style.display='none';
document.getElementById('fade').style.display='none';

});


$("#Save2").click(function(){

var ProfileName = document.getElementById('ProfileName');
var ProfileUSN = document.getElementById('ProfileUSN');
var ProfileEmail = document.getElementById('ProfileEmail');
var ProfileAddress = document.getElementById('ProfileAddress');

var NewName = document.getElementById('NewTName');
var NewUSN = document.getElementById('NewEMPI');
var NewEmail = document.getElementById('NewTEmail');
var NewAddress = document.getElementById('NewTAddress');

ProfileName.innerHTML=NewName.value;
ProfileUSN.innerHTML=NewUSN.value;
ProfileEmail.innerHTML=NewEmail.value;
ProfileAddress.innerHTML=NewAddress.value;
ProfileDept.innerHTML=NewDept.value;

NewTName.value="";
NewEMPI.value="";
NewTEmail.value="";
NewTAddress.value="";

document.getElementById('light').style.display='none';
document.getElementById('fade').style.display='none';


});
$("#Cancel2").click(function(){

NewTName.value="";
NewEMPI.value="";
NewTEmail.value="";
NewTAddress.value="";

document.getElementById('light').style.display='none';
document.getElementById('fade').style.display='none';

});





$("#optionsRadios2").click(function(){

document.getElementById('student-form').style.display='block';
document.getElementById('teacher-form').style.display='none';

});

$("#optionsRadios1").click(function(){

document.getElementById('student-form').style.display='none';
document.getElementById('teacher-form').style.display='block';

});