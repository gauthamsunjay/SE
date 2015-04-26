$("#Edit").click(function(){

document.getElementById('light').style.display='block';
$("#light").draggable();


});
count=1;
$("#Add").click(function(){


textArea=document.getElementById("NewComment");
subjectArea=document.getElementById("NewSubject");

comment=textArea.value;
CommentDiv=document.getElementById("CommentBox");

table=document.getElementById("commentTable");

newtable="commentTable"+count;
newcomtable=table.cloneNode(true);
newcomtable.id=newtable;
count++;

NameAndDate=document.getElementById("NameAndDate");
date=document.getElementById("date");
user=document.getElementById("username");
contentComment=document.getElementById("contentComment");
subTitle=document.getElementById("subTitle");


userName="abc";//get from dataBase
NameAndDate.innerHTML=userName+" , "+Date();
subTitle.innerHTML=subjectArea.value;
contentComment.innerHTML=textArea.value;

CommentDiv.appendChild(newcomtable);
newcomtable.style.visibility="show";


textArea.value="";
subjectArea.value="";

document.getElementById('light').style.display='none';
});

$("#Cancel").click(function(){
document.getElementById("NewComment").value="";
document.getElementById("NewSubject").value="";
document.getElementById('light').style.display='none';
});

