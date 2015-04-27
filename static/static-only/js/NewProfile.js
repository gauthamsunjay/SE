$("#createAcc").click(function(){

document.getElementById('light').style.display='block';
document.getElementById('fade').style.display='block';


});

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