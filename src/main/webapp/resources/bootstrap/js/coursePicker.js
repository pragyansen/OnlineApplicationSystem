function arts() {
	document.getElementById("arts").style.display="inline";
	
    document.getElementById("commerce").style.display="none";
    document.getElementById("science").style.display="none";
}

function commerce() {
    document.getElementById("commerce").style.display="inline";

    document.getElementById("arts").style.display="none";
    document.getElementById("science").style.display="none";

}

function science() {
    document.getElementById("science").style.display="inline";
    
    document.getElementById("arts").style.display="none";
    document.getElementById("commerce").style.display="none";

}