function switchItemVisibility(id,sender,show_hidden=false){
	var element=document.getElementById(id);
	element.classList.toggle("hidden");
	element.classList.toggle("not_hidden");
	const request=new XMLHttpRequest();
	var url;
	if(sender.getAttribute("value")=="visibility"){
		url="/scripts/rq_hide.php?id="+id;
		sender.setAttribute("value","visibility_off");
	}
	else{
		url="/scripts/rq_show.php?id="+id;
		sender.setAttribute("value","visibility");
	}
	request.open("GET", url);
	request.addEventListener("readystatechange", () => {
		if (request.readyState === 4 && request.status === 200) {
	  		console.log( request.responseText );
   	 	}
	});
	request.send();
	if(!show_hidden)
		element.remove();
}