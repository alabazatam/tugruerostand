<?php

class Respaldar {
	
	function generarRespaldo(){
	
	
	$fecha = date("Ymdhis");
		
	$file=fopen($_SERVER["DOCUMENT_ROOT"]."/".main_folder."/web/files/Respaldos/admin_tugruero_".$fecha.".sql","x+") or die("Problemas");
	//vamos añadiendo el contenido
	$polizas = $this->respaldoPolizas();
	fputs($file,"#########Polizas############\n");
	foreach($polizas as $datos){
	if($datos['date_created']==''){
		$datos['date_created'] = date("Y-m-d h:i:s");
	}
	if($datos['date_updated']==''){
		$datos['date_updated'] = date("Y-m-d h:i:s");
	}
	if($datos['created_by']==''){
		$datos['created_by'] = 1;
	}
	if($datos['updated_by']==''){
		$datos['updated_by'] = 1;
	}
	fputs($file,"INSERT INTO `admin_tugruero`.`PolizasBCK` 
	(`Placa`,`Cedula`,`Nombre`,`Apellido`,`Marca`,`Modelo`,`Clase`,`Tipo`,`Color`,`Año`,`Serial`,`Seguro`,`NumPoliza`,`DireccionEDO`,`Domicilio`,`DireccionFiscal`, 
	`Vencimiento`,`date_created`,`date_updated`,`created_by`,`updated_by`,`Nacionalidad`,`Celular`,`Email`,`DesdeVigencia`,`EstatusPoliza`,`Respaldo`
	)
	VALUES
	('".$datos['Placa']."','".$datos['Cedula']."','".$datos['Nombre']."','".$datos['Apellido']."','".$datos['Marca']."','".$datos['Modelo']."','".$datos['Clase']."','".$datos['Tipo']."','".$datos['Color']."','".$datos['Año']."','".$datos['Serial']."','".$datos['Seguro']."','".$datos['NumPoliza']."','".$datos['DireccionEDO']."','".$datos['Domicilio']."','".$datos['DireccionFiscal']."', 
	'".$datos['Vencimiento']."','".$datos['date_created']."','".$datos['date_updated']."','".$datos['created_by']."','".$datos['updated_by']."','".$datos['Nacionalidad']."','".$datos['Celular']."','".$datos['Email']."','".$datos['DesdeVigencia']."','".$datos['EstatusPoliza']."','".$datos['Respaldo']."');\n");	
		
		
	}
	
	$solicitud_plan_datos = $this->respaldoSolicitudPlan();
	fputs($file,"#########SolicitudPlan############\n");
	foreach($solicitud_plan_datos as $datos){
		fputs($file,"	INSERT INTO `admin_tugruero`.`SolicitudPlanBCK` 
	(`idSolicitudPlan`,`Nombres`,`Apellidos`,`Correo`, `Cedula`, `EstadoCivil`,	`FechaNacimiento`,`Sexo`,`Rif`, 
	`Estado`,`Ciudad`,`Domicilio`, `Telefono`,`Celular`,`FechaSolicitud`, `TipoPago`,`NumeroTransaccion`,`Clase`, 
	`Marca`, `Modelo`,`Anio`, `Color`, `Placa`, `Tipo`, `Puestos`, `SerialMotor`, `SerialCarroceria`, `Estatus`, 
	`TotalSinIva`, `TotalConIva`, `PagoRealizado`, `Observacion`, `IdV`, `Kilometraje`, `CantidadServicios`,`Respaldo`,`IdRespaldo`
	)
	VALUES
	('".$datos['idSolicitudPlan']."','".$datos['Nombres']."','".$datos['Apellidos']."', '".$datos['Correo']."', '".$datos['Cedula']."','".$datos['EstadoCivil']."',	'".$datos['FechaNacimiento']."','".$datos['Sexo']."' ,'".$datos['Rif']."', 
	'".$datos['Estado']."',	'".$datos['Ciudad']."', '".$datos['Domicilio']."', '".$datos['Telefono']."','".$datos['Celular']."','".$datos['FechaSolicitud']."','".$datos['TipoPago']."', '".$datos['NumeroTransaccion']."', 
	'".$datos['Clase']."', '".$datos['Marca']."', '".$datos['Modelo']."','".$datos['Anio']."','".$datos['Color']."','".$datos['Placa']."','".$datos['Tipo']."','".$datos['Puestos']."','".$datos['SerialMotor']."', '".$datos['SerialCarroceria']."','".$datos['Estatus']."', 
	'".$datos['TotalSinIva']."', '".$datos['TotalConIva']."', '".$datos['PagoRealizado']."', '".$datos['Observacion']."', '".$datos['IdV']."', '".$datos['Kilometraje']."', '".$datos['CantidadServicios']."','".$datos['Respaldo']."',null);\n");
	}
	
	
	$solicitud_pago_detalle_datos = $this->respaldoSolicitudPagoDetalle();
	fputs($file,"#########SolicitudPagoDetalle############\n");
	foreach($solicitud_pago_detalle_datos as $datos){
	fputs($file,"	INSERT INTO `admin_tugruero`.`SolicitudPagoDetalleBCK` 
	(`idSolicitudPlan`,	`id`, `description`,`status`,`status_detail`,`currency_id`,`date_created`, 
	`date_approved`, `payment_method_id`,`payment_type_id`, `collector_id`, `payer_type`, `payer_id`, 
	`payer_email`, `payer_identification_type`, `payer_identification_number`,`payer_first_name`, 
	`payer_last_name`,	`payer_entity_type`, `transaction_amount`, `net_received_amount`, `carholder_name`, 
	`carholder_identification_type`, `cardholder_identification_number`	)
	VALUES
	('".$datos['idSolicitudPlan']."','".$datos['id']."','".$datos['description']."','".$datos['status']."','".$datos['status_detail']."', '".$datos['currency_id']."','".$datos['date_created']."','".$datos['date_approved']."', 
	'".$datos['payment_method_id']."','".$datos['payment_type_id']."','".$datos['collector_id']."', '".$datos['payer_type']."','".$datos['payer_id']."', '".$datos['payer_email']."','".$datos['payer_identification_type']."', 
	'".$datos['payer_identification_number']."','".$datos['payer_first_name']."','".$datos['payer_last_name']."','".$datos['payer_entity_type']."','".$datos['transaction_amount']."', 
	'".$datos['net_received_amount']."', '".$datos['cardholder_name']."','".$datos['cardholder_identification_type']."', '".$datos['cardholder_identification_number']."');\n");
	}
	
	$solicitud_plan_seleccion = $this->respaldoSolicitudPlanSeleccion();
	fputs($file,"#########SolicitudPlanSeleccion############\n");
	foreach($solicitud_plan_seleccion as $datos){
	fputs($file,"	INSERT INTO `admin_tugruero`.`SolicitudPlanSeleccionBCK` (`idSolicitudPlan`,`idPlan`, `PrecioConIva`, `PrecioSinIva`,`FechaSolicitud`)
		VALUES
		('".$datos['idSolicitudPlan']."','".$datos['idPlan']."', '".$datos['PrecioConIva']."','".$datos['PrecioSinIva']."', '".$datos['FechaSolicitud']."');\n");			
	}
	$solicitud_documentos = $this->respaldoSolicitudDocumentos();
	fputs($file,"#########SolicitudDocumentos############\n");
	foreach($solicitud_documentos as $datos){
	fputs($file,"	INSERT INTO `admin_tugruero`.`SolicitudDocumentosBCK` (`idSolicitudPlan`,`TipoDocumento`, `NombreDocumento`,`FechaSubida`,`Estatus`)
	VALUES
	('".$datos['idSolicitudPlan']."','".$datos['TipoDocumento']."','".$datos['NombreDocumento']."','".$datos['FechaSubida']."','".$datos['Estatus']."');\n");	
		
		
	}
	$solicitud_aprobada= $this->respaldoSolicitudAprobada();
	fputs($file,"#########SolicitudAprobada############\n");
	foreach($solicitud_aprobada as $datos){
	fputs($file,"	INSERT INTO `admin_tugruero`.`SolicitudAprobadaBCK` 
	(`idSolicitudPlan`,`NumProducto`,`VigenciaDesde`,`VigenciaHasta`,`PolizaAsistir`,`ReciboAsistir`,`FechaAprobacion`)
	VALUES
	('".$datos['idSolicitudPlan']."','".$datos['NumProducto']."','".$datos['VigenciaDesde']."','".$datos['VigenciaHasta']."','".$datos['PolizaAsistir']."','".$datos['ReciboAsistir']."','".$datos['FechaAprobacion']."');\n");	
		
		
	}

	
	fclose($file);
	
		if(count($solicitud_plan_datos)>0){			
			$zip = new ZipArchive();
			$filename = $_SERVER["DOCUMENT_ROOT"]."/".main_folder."/web/files/Respaldos/admin_tugruero_".$fecha.".zip";
			$options_cuadros = array('add_path' => 'Cuadros/', 'remove_all_path' => TRUE);
			$options_solicitudes = array('add_path' => 'Solicitudes/', 'remove_all_path' => TRUE);
				if($zip->open($filename,ZIPARCHIVE::CREATE)===true) {
						$zip->addFile("../../web/files/Respaldos/admin_tugruero_$fecha.sql","admin_tugruero_$fecha.sql");
						$zip->addGlob("../../web/files/Cuadros/*.pdf",GLOB_BRACE, $options_cuadros);
						$zip->addGlob("../../web/files/Solicitudes/*",GLOB_BRACE, $options_solicitudes);
						$zip->close();
						//echo 'Creado '.$filename;
				}
				else {
						echo 'Error creando '.$filename;die;
				}
				unlink($_SERVER["DOCUMENT_ROOT"]."/".main_folder."/web/files/Respaldos/admin_tugruero_".$fecha.".sql");

				$files_cuadros = glob("../../web/files/Cuadros/*"); // obtiene todos los archivos
				foreach($files_cuadros as $file){
				  if(is_file($file)) // si se trata de un archivo
					unlink($file); // lo elimina
				}
				$files_solicitudes = glob("../../web/files/Solicitudes/*"); // obtiene todos los archivos
				foreach($files_solicitudes as $file){
				  if(is_file($file)) // si se trata de un archivo
					unlink($file); // lo elimina
				}	

				$array_respaldo = array();
				$array_respaldo['Nombre'] = "admin_tugruero_".$fecha.".zip";
				$this->updateRespaldo();
				$this->saveRespaldo($array_respaldo);
				return true;
		}else{
			return false;
			
		}
	
	

	}

	function respaldoSolicitudPlan(){
		$ConnectionORM = new ConnectionORM();
		$q = $ConnectionORM->getConnect()->SolicitudPlan
		->select("*")
		->where("Respaldo=?",0)
        ->and("SolicitudPlan.Estatus=?","ACT")
        ->and("(SELECT COUNT(*) FROM SolicitudDocumentos c WHERE c.idSolicitudPlan = SolicitudPlan.idSolicitudPlan ) > 0");
        return $q;
	}
	function respaldoSolicitudPagoDetalle(){
		$ConnectionORM = new ConnectionORM();
		$q = $ConnectionORM->getConnect()->SolicitudPagoDetalle
		->select("*")
		->join("SolicitudPlan","INNER JOIN SolicitudPlan sp on sp.idSolicitudPlan = SolicitudPagoDetalle.idSolicitudPlan")
		->where("Respaldo=?",0)
        ->and("sp.Estatus=?","ACT")
        ->and("(SELECT COUNT(*) FROM SolicitudDocumentos c WHERE c.idSolicitudPlan = sp.idSolicitudPlan ) > 0");
        return $q;
	}
	function respaldoSolicitudPlanSeleccion(){
		$ConnectionORM = new ConnectionORM();
		$q = $ConnectionORM->getConnect()->SolicitudPlanSeleccion
		->select("*")
		->join("SolicitudPlan","INNER JOIN SolicitudPlan sp on sp.idSolicitudPlan = SolicitudPlanSeleccion.idSolicitudPlan")
		->where("Respaldo=?",0)
        ->and("sp.Estatus=?","ACT")
        ->and("(SELECT COUNT(*) FROM SolicitudDocumentos c WHERE c.idSolicitudPlan = sp.idSolicitudPlan ) > 0");		
		return $q;
	}
	function respaldoSolicitudDocumentos(){
		$ConnectionORM = new ConnectionORM();
		$q = $ConnectionORM->getConnect()->SolicitudDocumentos
		->select("*")
		->join("SolicitudPlan","INNER JOIN SolicitudPlan sp on sp.idSolicitudPlan = SolicitudDocumentos.idSolicitudPlan")
		->where("Respaldo=?",0)
        ->and("sp.Estatus=?","ACT")
        ->and("(SELECT COUNT(*) FROM SolicitudDocumentos c WHERE c.idSolicitudPlan = sp.idSolicitudPlan ) > 0");

		return $q;
	}
	function respaldoSolicitudAprobada(){
		$ConnectionORM = new ConnectionORM();
		$q = $ConnectionORM->getConnect()->SolicitudAprobada
		->select("*")
		->join("SolicitudPlan","INNER JOIN SolicitudPlan sp on sp.idSolicitudPlan = SolicitudAprobada.idSolicitudPlan")
		->where("Respaldo=?",0)
        ->and("sp.Estatus=?","ACT")
        ->and("(SELECT COUNT(*) FROM SolicitudDocumentos c WHERE c.idSolicitudPlan = sp.idSolicitudPlan ) > 0");
		return $q;
	}
	function respaldoPolizas(){
		$ConnectionORM = new ConnectionORM();
		$q = $ConnectionORM->getConnect()->Polizas
		->select("*")
		->where("Respaldo=?",0);
		return $q;
	}
		function updateRespaldo(){			

			$query = "UPDATE SolicitudPlan set Respaldo = 1 WHERE Estatus = 'ACT'; UPDATE Polizas set Respaldo = 1;";
			
			$ConnectionORM = new ConnectionORM();
			$q = $ConnectionORM->ejecutarPreparado($query);
			return $q;
		}
		function Restaurar($sql){
			$query = $sql;
			$ConnectionORM = new ConnectionORM();
			$q = $ConnectionORM->ejecutarPreparado($query);
			return $q;
		}
        function saveRespaldo($values){
		
			$array = array(
				'Nombre' => $values['Nombre'],
				'Fecha' => date('Y-m-d h:i:s'),
			);
			
			$ConnectionORM = new ConnectionORM();
			$q = $ConnectionORM->getConnect()->Respaldos()->insert($array);
        }
	function listarRespaldos(){
		$ConnectionORM = new ConnectionORM();
		$q = $ConnectionORM->getConnect()->Respaldos
		->select("*,DATE_FORMAT(Fecha, '%d/%m/%Y %H:%i:%s') as Fecha")
        ->order("DATE_FORMAT(Fecha, '%Y/%m/%d %H:%i:%s') DESC")
		->limit(3);
		return $q;
	}
	
}
