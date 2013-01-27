function displayChallenge()
{
document.getElementById("challenge_options").style.display="none";
document.getElementById("credit_amount").style.visibility="visible";
}

function challengeView2()
{
document.getElementById("credit_amount").style.display="none";
document.getElementById("challenge_view2").style.visibility="visible";
document.getElementById("badge_holder").innerHTML= quarterBadge ;
document.getElementById("check1").style.visibility="visible";
document.getElementById("prog1").style.color="#123456";
pickBadge()
}

function challengeView3()
{
document.getElementById("challenge_view2").style.display="none";
document.getElementById("challenge_view3").style.visibility="visible";
document.getElementById("check2").style.visibility="visible";
document.getElementById("prog2").style.color="#123456";
}
function challengeView4()
{
document.getElementById("challenge_view3").style.display="none";
document.getElementById("challenge_view4").style.visibility="visible";
document.getElementById("check3").style.visibility="visible";
document.getElementById("prog3").style.color="#123456";
}

function challengeDone()
{
document.getElementById("challenge_view3").style.display="none";
document.getElementById("challenge_view4").style.visibility="visible";
document.getElementById("check4").style.visibility="visible";
document.getElementById("prog4").style.color="#123456";
}
function pickBadge()
{
if (document.getElementById("quarter").checked == true)
  {
  document.getElementById("badge_holder").innerHTML= quarterBadge ;
  }
else if (document.getElementById("half").checked == true )
  {
  document.getElementById("badge_holder").innerHTML= halfBadge ;
  }
else if (document.getElementById("full").checked == true )
  {
  document.getElementById("badge_holder").innerHTML= fullBadge ;
  }
  else if (document.getElementById("partial").checked == true )
  {
  document.getElementById("badge_holder").innerHTML= partialBadge ;
  }
 else alert("Error"); 
}