const bar=document.getElementById('bar');
const close=document.getElementById('close');
const nav=document.getElementById('navbar');


if(bar)
{
    bar.addEventListener('click',()=>
    {
        nav.classList.add('active');
    })
}
if(close)
{
    close.addEventListener('click',()=>
    {
        nav.classList.remove('active');
    })
}

/*date and time*/
/*let time=document.getElementById("time_date");
setInterval(() =>
     {
        let d = new Date();
        time.innerHTML= d.toLocaleTimeString();
     },1000); */


     window.onload = function() {
      // Get the current date and time
      var currentDateTime = new Date();

      // Format the date in UK format
      var day = currentDateTime.getDate();
      var month = currentDateTime.getMonth() + 1; // Adding 1 because JavaScript months are zero-based
      var year = currentDateTime.getFullYear();
      var formattedDate = ('0' + day).slice(-2) + '/' + ('0' + month).slice(-2) + '/' + year;

      // Format the time
      var hours = currentDateTime.getHours();
      var minutes = currentDateTime.getMinutes();
      var seconds = currentDateTime.getSeconds();
      var formattedTime = ('0' + hours).slice(-2) + ':' + ('0' + minutes).slice(-2) + ':' + ('0' + seconds).slice(-2);

      // Display the formatted date and time
      document.getElementById('date').textContent = formattedDate;
      document.getElementById('time').textContent = formattedTime;
    };



/*Contact*/
function submit_form()
{
  var nam= document.getElementById("nam1").value;
  var e= document.getElementById("e1").value;
  var sub=document.getElementById("sub1").value;
  var msg=document.getElementById("msg1").value;
  var letters=/^[A-Za-z]+$/;
  var email_val=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;


  if(nam==''||e==''||sub=='' || msg=='')
		{
		  alert("Enter each details correctly");
		}
else if(!letters.test(nam))
		{
		  alert('Name must be only letters');
		}
else if(!letters.test(sub))
		{
		  alert('Subject must be only letters');
		}
else if(!email_val.test(e))
		{
		  alert('Invalid email format please enter valid email id');
		}
else
        {
          alert("Sumbitted successfully");
        }
}

/*Newsletter sign up*/

function signup_form()
{
    var em= document.getElementById("e2").value;
    var news= document.getElementById("news1").value;
    var email_val=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if(news=='')
		{
		  alert("Enter each details correctly");
		}
else if(!email_val.test(em))
		{
		  alert('Invalid email format please enter valid email id');
		}
else
        {
          alert("Sumbitted successfully");
        }
}
