var textboxcount = 0;
var tableDrawn = false;
var length = 0;
$(function () {
	$.ajax({
		type : 'POST',
		async : true,
		url : 'ajax/project',
		success : function(response) {
			var ls = response.split(',');
			$("#hiddenBox-1").show();
			var list = document.getElementById("projId");
			list.options.length = 0;
			for(var i in ls) {
			  list.add(new Option(ls[i], ls[i]));
			}
		}
	});	
  });

function getAgroup(proj) {
	$.ajax({
		type : 'POST',
		async : true,
		url : 'ajax/project/' + proj,
		success : function(response) {
			var ls = response.split(',');
			$("#hiddenBox0").show();
			var list = document.getElementById("batchId");
			list.options.length = 0;
			for(var i in ls) {
			  list.add(new Option(ls[i], ls[i]));
			}
		}
	});
	//introJs().start();
}

function getQgroup(batchId) {
	$.ajax({
		type : 'POST',
		async : true,
		url : 'ajax/' + batchId,
		success : function(response) {
			var ls = response.split(',');
			$("#hiddenBox1").show();
			var list = document.getElementById("groupId");
			list.options.length = 0;
			for(var i in ls) {
			  list.add(new Option(ls[i], ls[i]));
			}
		}
	});
	//introJs().start();
}

function addTextArea(appId,qId){
	resetText();
	$.ajax({
		type : 'POST',
		async : true,
		url : 'ajax/' + qId + '/' + appId,
		success : function(response) {
			console.log(response);
			
			$("#qlistbody").show();
			$('#radio1').find("textarea").prop('value', response[0].queryDetails);
			var checkboxes = document.getElementsByTagName('input');
			for ( var i = 0; i < checkboxes.length; i++) {
				if (checkboxes[i].type == 'radio') {
					checkboxes[i].checked = false;
				}
			}
				if (response.length > 1) {
					for ( var i = 2; i < response.length + 1; i++) {
						$("#radio1").clone().prop('id', 'radio' + i).appendTo(".radiobody");
						$('#radio'+i).find("input").prop('id', 'query' + i).prop('value', i);
						$('#radio'+i).find("textarea").prop('id', 'textarea' + i).prop('value', response[i-1].queryDetails);
					}
				}
			}
		});

	}

function resetText() {
	$('#textarea1').prop('value','');
	for ( var i = 2; i < 10 + 1; i++) {
		console.log('radio'+i);
		$("#radio"+i).remove();
	}
	$("#qlistbody").hide();
	$("#radio1").prop('checked',false);
	$("#queryeditor").hide();
}
function select(option) {

	console.log(option.id);
	var checkboxes = document.getElementsByTagName('input');
	for ( var i = 0; i < checkboxes.length; i++) {
		if (checkboxes[i].type == 'radio') {
			checkboxes[i].checked = false;
		}
	}
	$(option).find("input").prop('checked', true);
}
function generateQuery(){
	var selector = $("input[type='radio']:checked").val();
	var text = $('#textarea'+selector).val();
	text = text + ' ';
	var tarray = text.split('?');
	textboxcount = tarray.length-1;
	var result = '';
	for (var i = 0; i<tarray.length-1; i++){
		var input = "<input type='text' id='qip"+ i +"'>";
		result += tarray[i]+input;
	}
	result += tarray[tarray.length-1];
	$('#qmodifier').html(result);
	$("#queryeditor").show();
}


function ShowDialog(modal)
{
	
	if(validateQuery() || validateIncident()){
		return;
	}
	var incidentId = document.getElementById("incidentId").value; 
	var text = "If you cnofirm, backup will be stored as C:/Users/682274/Desktop/"+incidentId+"_date_time.csv";
	var query = modifiedQuery();
	fetchandpopulateTable(query,"view");
	if(length == 0){
		alert("No data found");
		return;
	}
    $( "#dialog" ).show();
    var height1 = $(window).height(); 
    var width1 = $(window).width();
    dialog = $( "#dialog" ).dialog({
        height: (height1*4)/5,
        width: (width1*4)/5,
        modal: true,
        buttons: [{
        	id: "b1",
        	text: "Confirm Changes",
        	click: function(){
        		if(length>25){
        			alert("Access denied. More than 5 rows will be updated.");
        			$("#example1").dataTable().fnDestroy();
        			dialog.dialog( "close" );
        		} else{
        			if(confirm(text) == true){
        				$("#example1").dataTable().fnDestroy();
        				fetchandpopulateTable(query,"update");
        				$( "#b1" ).hide();
        				$( "#b2" ).text('Close');
        			} else{
        				$("#example1").dataTable().fnDestroy();
            			dialog.dialog( "close" );
        			}
        			
        		}
            }
        },
        {
        	id: "b2",
            text: "Cancel",
            click: function() {
            	$("#example1").dataTable().fnDestroy();
              dialog.dialog( "close" );
            }
          }]
    });
    if (modal)
    {
        $("#overlay").unbind("click");
    }
    else
    {
        $("#overlay").click(function (e)
        {
            HideDialog();
        });
    }
}

function modifiedQuery(){
	var selector = $("input[type='radio']:checked").val();
	var text = $('#textarea'+selector).val();
	text = text + ' ';
	var tarray = text.split('?');
	var result = '';
	for (var i = 0; i<tarray.length-1; i++){
		var input = "'" + $('#qip'+i).val().trim() + "'";
		result += tarray[i]+input;
	}
	result += tarray[tarray.length-1];
	return result;
}

function fetchandpopulateTable(query,type){
	var selector = $("input[type='radio']:checked").val();
	var text = $('#textarea'+selector).val();
	var appId = $('#batchId').val();
	var qId = $('#groupId').val();
	var obj ={query:query,select:text,qId:qId,appId:appId};
	var incidentId = document.getElementById("incidentId").value;
	$.ajax({
		type : 'POST',
		async : false,
		url : 'ajax/query/' + type +'/'+incidentId,
		data: JSON.stringify(obj),
		contentType: 'application/json',
		success : function(response) {
			$('#example1').show();
			$('#databox').html('<strong>Table data to be modified</strong>');
			var ls = response[0];
			var result = '<tr>';
			for(var key in ls){
				result += '<th>' + key + '</th>';
			}
			result += '</tr>';
			$('.thead').html(result);
			result = '';
			length = response.length;
			for(var i = 0; i<response.length;i++ ){
				result += '<tr>';
				for(var key in response[i]){
					result += '<td>' + response[i][key] + '</td>';
				}
				result += '</tr>';
			}
			console.log(result);
			$('.tbody').html(result);
			$("#example1").DataTable();	
			tableDrawn = true;
		},
		statusCode: {
		    404: function() {
		      $('#databox').html('<strong>No Data Found</strong>');
		      $('#example1').hide();
		      if(tableDrawn){ $("#example1").DataTable().destroy();	 }
		    }
		}
	}); 
}

function demo(){
	$('#queryeditor').show();
	$('#qlistbody').show();
	$('#hiddenBox1').show();
	$('#hiddenBox0').show();
	introJs().oncomplete(function() {
        $('#queryeditor').hide();
		$('#qlistbody').hide();
		$('#hiddenBox1').hide();
		$('#hiddenBox0').hide();
      }).onexit(function() {
	  	$('#queryeditor').hide();
		$('#qlistbody').hide();
		$('#hiddenBox1').hide();
		$('#hiddenBox0').hide();
      }).setOptions({'tooltipPosition': 'auto','showProgress': 'true'}).start(); // Start!

}

function verifyRole() {
	var isAdmin = true;
	$.ajax({
		type : 'POST',
		async : true,
		url : 'ajax/role',
		success : function(response) {
			if(response.value != "ROLE_ADMIN"){
				isAdmin = false;
			}
		}
	});
	if(!isAdmin){
		alert("You are not authenticated.");
		return false;
	}
}