var $submitProfile = document.getElementById("submitProfile");

$(function submitProfile() {

    $submitProfile.onclick(function() {

        var name = document.getElementById("nameArea").value;
        var avatar = document.getElementById("avatarInfo").value;
        var email = document.getElementById("emailInfo").value;
        var local = document.getElementById("localInfo").value;
        var bio = document.getElementById("bioInfo").value;

    });
});

