function displayChallenge()
{
document.getElementById("challenge_options").style.display="none";
document.getElementById("credit_amount").style.visibility="visible";
document.getElementById("challenge_name").innerHTML= challengeTitle;
}

function challengeView2()
{

document.getElementById("credit_amount").style.display="none";


document.getElementById("challenge_view2").style.display="block";
document.getElementById("badge_holder").style.visibility="visible";
document.getElementById("badge_image").innerHTML= quarterBadge;
document.getElementById("badge_title").innerHTML= challengeTitle;


document.getElementById("check1").style.visibility="visible";
document.getElementById("prog1").style.backgroundColor="#50D55D";


pickBadge()
}

function challengeView3()
{


document.getElementById("challenge_view2").style.display="none";
document.getElementById("challenge_view3").style.display="block";
document.getElementById("check2").style.visibility="visible";

document.getElementById("prog2").style.backgroundColor="#50D55D";

}
function challengeView4()
{
subjectNumber = document.getElementById("challenge_subject").value;
badgeSubject = $.get("../subjects/"+subjectNumber+".json", function(subject) {
//alert(subject["name"]) 
document.getElementById("badge_subject").innerHTML= subject["name"]});
document.getElementById("challenge_view3").style.display="none";



document.getElementById("challenge_view4").style.display="block";
document.getElementById("check3").style.visibility="visible";

document.getElementById("prog3").style.backgroundColor="#50D55D";

}
function challengeView5()
{
document.getElementById("challenge_view4").style.display="none";
document.getElementById("challenge_view5").style.display="block";

document.getElementById("check4").style.visibility="visible";
document.getElementById("prog4").style.backgroundColor="#50D55D";
}
function challengeView6()
{

document.getElementById("challenge_view5").style.display="none";
document.getElementById("challenge_view6").style.display="block";
document.getElementById("check5").style.visibility="visible";
document.getElementById("prog5").style.color="#123456";

document.getElementById("prog5").style.backgroundColor="#50D55D";
}
function challengeDone()
{
document.getElementById("new_challenge").submit()
document.getElementById("challenge_view6").style.display="none";
document.getElementById("badge_holder_2").innerHTML= document.getElementById("badge_holder").innerHTML;
document.getElementById("badge_holder").style.visibility="hidden";
document.getElementById("challenge_view_done").style.display="block";
document.getElementById("done-button").style.display="none";
document.getElementById("now_what").style.display="block";
document.getElementById("check6").style.visibility="visible";
document.getElementById("prog6").style.color="#123456"
document.getElementById("prog6").style.backgroundColor="#50D55D";
}
function displayNext()
{
document.getElementById("challenge_view_done").style.display="none";
document.getElementById("execution_view").style.display="block";

}


function pickChallengeImage()
{
document.getElementById("select_image").style.display="block";
}

function pickBadge()
{
if (document.getElementById("challenge_credit_quarter").checked == true)
  {
  document.getElementById("badge_image").innerHTML= quarterBadge ;
  }
else if (document.getElementById("challenge_credit_half").checked == true )
  {
  document.getElementById("badge_image").innerHTML= halfBadge ;
  }
else if (document.getElementById("challenge_credit_full").checked == true )
  {
  document.getElementById("badge_holder").innerHTML= fullBadge ;
  }
  else if (document.getElementById("challenge_credit_partial").checked == true )
  {
  document.getElementById("badge_holder").innerHTML= partialBadge ;
  }
 else alert("Error"); 
}