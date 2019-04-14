 <?php
    include ('../config/conexion.php');
    include ('../config/variables.php');
	$descuento = array();
	$rfc = $_POST['rfc'];
	$ban = false;
	$msgErr = '';
	
	$sqlGetDesc = "SELECT id, porc_desc FROM $tClients WHERE rfc='$rfc' ";
	$resGetDesc = $con->query($sqlGetDesc);
	if($resGetDesc->num_rows > 0){
		$rowGetDesc = $resGetDesc->fetch_assoc();
		$id = $rowGetDesc['id'];
		$desc = $rowGetDesc['porc_desc'];
		$descuento[] = array('id'=>$id, 'desc'=>$desc);
		$ban = true;
	}else{
		$ban = false;
		$msgErr .= 'Error: No existe el RFC.';
	}
	
	if($ban){
        echo json_encode(array("error"=>0, "dataRes"=>$descuento));
    }else{
        echo json_encode(array("error"=>1, "msgErr"=>$msgErr));
    }
	
?>