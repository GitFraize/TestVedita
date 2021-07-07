function plusQuantity(id){
	var element=document.getElementById(id);
	element.setAttribute("value", Number(element.getAttribute("value"))+1);
	updateQuantity(id.substring(1));
}
function minusQuantity(id){
	var element=document.getElementById(id);
	element.setAttribute("value", Number(element.getAttribute("value"))-1);
	updateQuantity(id.substring(1));
}
function onChange(id){
	var element=document.getElementById(id);
	updateQuantity(id.substring(1));
}
function updateQuantity(id){
	var element=document.getElementById("q"+id);
	const request=new XMLHttpRequest();
	const url="/scripts/rq_quantity.php?id="+id+"&quantity="+element.getAttribute("value");
	request.open("GET", url,true);
	request.addEventListener("readystatechange", () => {
		if (request.readyState === 4 && request.status === 200) {
	  		console.log( request.responseText );
   	 	}
	});
	request.send();
}