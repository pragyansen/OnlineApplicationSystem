function validateQuery(){
	var err = false;
	for(var i=0;i<textboxcount;i++){
		if($('#qip'+i).val().trim() == ''){
			err = true;
			$('#qip'+i).addClass('redborder');
		}else{
			$('#qip'+i).removeClass('redborder');
		}
	}

	return err;
}

function validateIncident(){
	var err1 = false;
	if($('#incidentId').val().trim() == ''){
		err1 = true;
		$('#incidentId').addClass('redborder');
	}else{
		$('#incidentId').removeClass('redborder');
	}
	return err1;
}