// DOM Manipulation Challenge
// I worked on this challenge with Dominick Lombardo.
// Add your JavaScript calls to this page:
// Release 0:
// Release 1:
document.getElementById("release-0").className = "done";

// Release 2:
var release1 = document.getElementById("release-1");
release1.style.display = "none";

// Release 3:
var release2 = document.getElementsByTagName("h1");
release2[0].innerHTML = "I completed Release 2."

// Release 4:
var release3 = document.getElementById("release-3");
release3.style.backgroundColor = "#955251"

// Release 5:
var release4 = document.getElementsByClassName("release-4");
for (var i = 0; i < release4.length; i++) {
  release4[i].style.fontSize = "2em";
}

// Release 6:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));