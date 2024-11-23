function edit(){
    var editProfile = document.getElementById("edit");
    var pen = document.getElementById("pen");
    var records= document.getElementById("records");
    var main= document.getElementById("main");
    var line= document.getElementById("line");
    var username=document.getElementById("username");
    var email=document.getElementById("email");
    var back=document.getElementById("back");
    editProfile.hidden = !editProfile.hidden;
    back.style.display= "none";
    pen.style.display = "none"; // or "block"
    records.style.display="none";
    main.style.backgroundColor = "#232a2d";
    main.style.borderRadius = "20px";
    username.style.display="none";
    line.hidden=!line.hidden;
    email.style.display="none";
    
    
}   

function editBack(){
    var editProfile = document.getElementById("edit");
    var pen = document.getElementById("pen");
    var records= document.getElementById("records");
    var main= document.getElementById("main");
    var line= document.getElementById("line");
    var username=document.getElementById("username");
    var email=document.getElementById("email");    var back=document.getElementById("back");
    var back=document.getElementById("back");
    back.style.display= "block";

    editProfile.hidden = !editProfile.hidden;
    line.hidden=!line.hidden;
    main.style.backgroundColor = "#141b1e";
    main.style.borderRadius = "0px";
    username.style.display="block";
    email.style.display="block";
    records.style.display="block";
    records.style.display="flex";
    pen.style.display = "block"; // or "block"

}

function showConfirmBox() {
    document.getElementById("overlay").hidden = false;
}
function closeConfirmBox() {
    document.getElementById("overlay").hidden = true;
}

function isConfirm(answer) {
    if (answer) {
        alert("Answer is yes");
    } else {
        alert("Answer is no");
    }
    closeConfirmBox();
}



