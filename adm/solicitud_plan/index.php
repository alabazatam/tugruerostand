<?php include("../../autoload.php");?>	
<?php include("validator.php");?>
<?php include("../security/security.php");?>

<?php $action = "";
setlocale(LC_NUMERIC,"es_ES.UTF8");
if(isset($_REQUEST["action"]) and $_REQUEST["action"]!=""){
	$action = $_REQUEST["action"];
}
             /*$PDFPagos = new PDFPagos();
            $pdf = $PDFPagos->cuadroTUGRUERO(array('idSolicitudPlan'=> 1));*/
$values = $_REQUEST;
    if(!isset($values['IdV']) or $values['IdV']==''){
        $values['IdV'] = '3';
    }else{
        $SolicitudPlan = new SolicitudPlan();
        $cuenta_idv = $SolicitudPlan->getCuentaIdV($values['IdV']);
        if(count($cuenta_idv)==0){
            echo "No puede continuar con la petición";die;
        } 
        
    }
$values = array_merge($values,$_FILES);
	switch ($action) {
		case "index":
			executeIndex($values);	
		break;
		case "new":
			executeNew($values);	
		break;
		case "add":
			executeAdd($values);	
		break;
		case "edit":
			executeEdit($values);	
		break;
		case "update":
			executeUpdate($values);	
		break;		
		case "list_json":
			executeListJson($values);	
		break;
		case "aprobar":
			executeAprobar($values);	
		break;
		case "rechazar":
			executeRechazar($values);	
		break;
		case "precio_tugruero":
			executePrecioTugruero($values);	
		break;
		case "precio_rcv":
			executePrecioRcv($values);	
		break;
		default:
			executeIndex($values);
		break;
	}
	function executeIndex($values = null,$errors = null)
	{
		require('list_view.php');
	}
	function executeNew($values = null,$errors = null)
	{       
                
		$values['action'] = 'add';
		require('form_view.php');
	}
	function executeSave($values = null)
	{
		$SolicitudPlan = new SolicitudPlan();
		$values = $SolicitudPlan->saveSolicitudPlan($values);
		executeEdit($values,message_created);die;
	}
	function executeAdd($values = null,$errors = array())
	{
                //subirDocumentos($values, $_FILES);
                $errors = validate($values,$_FILES);
                
				if(count($errors)>0){
					executeNew($values,$errors);die;
				}else{
                                        $values['PagoRealizado'] = 'S';
                                        $SolicitudPlan = new SolicitudPlan();
                                        $Mail = new Mail();
					if($values['MET'] == 'TDC')
					{
                                                $values = $SolicitudPlan->saveSolicitudPlanAdmin($values);

                                                //subir documentos
                                                subirDocumentos($values, $_FILES);
                                               
                                                //executeMercadoPago($values,$errors);
                                                
                                                
					}else
					{
                                                if(($_FILES['DEP1']['size']>0) or ($_FILES['DEP2']['size']>0) or ($_FILES['DEP3']['size']>0)){
                                                $values['PagoRealizado'] = 'S';
   
                                                }
                                                    
						$values = $SolicitudPlan->saveSolicitudPlanAdmin($values);
                                                //print_r($values);die;
                                                //subir documentos
                                                subirDocumentos($values, $_FILES);
                                                //executePagado($values);
                                                //$Mail->sendMessageDepositoPago($values);

                                                
                                        }
					executeIndex($values);die;
				}
                
	}
	function executeEdit($values = null,$msg = null, $errors = null)
	{
        
        
		$SolicitudPlan = new SolicitudPlan();
		$values = $SolicitudPlan->getSolicitudPlanById($values);
        //print_r($values);die;
		$SolicitudPagoDetalle = new SolicitudPagoDetalle();
		$mercadopagodata = $SolicitudPagoDetalle->getPagoDetalleByID($values['idSolicitudPlan']);
		$values["id"] = $_REQUEST['id'];
		$values["payment_method_id"] = $_REQUEST['payment_method_id'];
		$values["payer_identification_number"] = $_REQUEST['payer_identification_number'];
		$values["carholder_name"] = $_REQUEST['carholder_name'];
		$values["transaction_amount"] = $_REQUEST['transaction_amount'];

        if($values['SerialMotor'] == '' and $_REQUEST['SerialMotor'] !=''){
			$values['SerialMotor'] = $_REQUEST['SerialMotor'];
		}
        if($values['SerialCarroceria'] == '' and $_REQUEST['SerialCarroceria'] !=''){
			$values['SerialCarroceria'] = $_REQUEST['SerialCarroceria'];
		}  
                
		if(isset($mercadopagodata["id"]) and $mercadopagodata['id'] !=''){
			$values['id'] = $mercadopagodata["id"];
		}	
		if(isset($mercadopagodata["payment_method_id"]) and $mercadopagodata['payment_method_id'] !=''){
			$values['payment_method_id'] = $mercadopagodata["payment_method_id"];
		}
		if(isset($mercadopagodata["payer_identification_number"]) and $mercadopagodata['payer_identification_number'] !=''){
			$values['payer_identification_number'] = $mercadopagodata["payer_identification_number"];
		}
		if(isset($mercadopagodata["carholder_name"]) and $mercadopagodata['carholder_name'] !=''){
			$values['carholder_name'] = $mercadopagodata["carholder_name"];
		}	
		if(isset($mercadopagodata["transaction_amount"]) and $mercadopagodata['transaction_amount'] !=''){
			$values['transaction_amount'] = $mercadopagodata["transaction_amount"];
		}else{
            $values['transaction_amount'] = $values['precio'];
        }
        			
		$planes_seleccionados = $SolicitudPlan -> getPlanesSeleccionados($values['idSolicitudPlan']);
		if(count($planes_seleccionados)>0){
                    foreach($planes_seleccionados as $seleccionados){
                        if($seleccionados['Tipo']=='tugruero.com'){
                            $values['precio_tugruero'] = $seleccionados['PrecioConIva'];
                        }
                        if($seleccionados['Tipo']=='RCV'){
                            $values['precio_rcv'] = $seleccionados['PrecioConIva'];
                        }
                    }
                }
                $values['action'] = 'update';
		$values['msg'] = $msg;
		
		require('form_view.php');
	}
	function executeUpdate($values = null)
	{
		$SolicitudPlan = new SolicitudPlan();           
        $errors = array();
		
				if($values["Estatus"] == "ACT"){
                    subirDocumentos($values,$_FILES);
                   
                    executeEdit($values,message_updated);die; 
				}
				
				$errors = validate($values);

				
				
				
                if(count($errors)>0){
					//print_r($errors);die;
                   executeEdit($values,null,$errors); 
                }else{
                    
                    $SolicitudPlan->updateSolicitudPlan($values);
					$SolicidPagoDetalle = new SolicitudPagoDetalle();
					
					$datos_pago = $SolicidPagoDetalle->getPagoDetalleByID($values['idSolicitudPlan']);
					
					if(!isset($datos_pago['idSolicitudPlan']) or $datos_pago['idSolicitudPlan'] == '' ){
						
							//echo "aaa";die;
							$SolicidPagoDetalle->savePagoDetalle($values);
												
					}else{
							
							
							$SolicidPagoDetalle->updatePagoDetalle($values);
						
					}
                    subirDocumentos($values,$_FILES);
                   
                    executeEdit($values,message_updated);die;   
                }
                

	}	
	function executeListJson($values)
	{
		$SolicitudPlan = new SolicitudPlan();
		$list_json = $SolicitudPlan ->getSolicitudPlanList($values);
		$list_json_cuenta = $SolicitudPlan ->getCountSolicitudPlanList($values);
		$array_json = array();
		$array_json['recordsTotal'] = $list_json_cuenta;
		$array_json['recordsFiltered'] = $list_json_cuenta;
		$SolicitudDocumentos = new SolicitudDocumentos();
		if(count($list_json)>0)
		{
            
			foreach ($list_json as $list) 
			{   
                $indicador_documento_vacio = "";
                $indicador_respaldo = "";
				$idSolicitudPlan = $list['idSolicitudPlan'];
				$status = $list['status'];
				if($status == 'Desactivado')
				{
					$message_status = "<label class='label label-danger'>Desactivado</label>";
				}
				if($status == 'Activo')
				{
					$message_status = "<label class='label label-success'>Activo</label>";
				}
				
				$NombreDocumento = $SolicitudDocumentos->getDocumentoByTipo($idSolicitudPlan,"Cedula");
				if($NombreDocumento==''){
					$indicador_documento_vacio = "<div><label class='label label-danger'>Falta documento</label></div>";
				}
                if($list["Respaldo"]==1){
                    $indicador_respaldo = "<div><label class='label label-success'>Respaldo efectuado</label></div>";
                }
                
				if($list['EstatusAbr']=="ENV")
				{
					$array_json['data'][] = array(
						"idSolicitudPlan" => $idSolicitudPlan,
						"Nombres" => $list['Nombres'],
						"Apellidos" => $list['Apellidos'],
						"Cedula" => $list['Cedula'],
						"Plan" => $list['concatenado_plan'],
						"Rif" => $list['Rif'],
						"PrecioTotal" => number_format($list['PrecioTotal'],2,",","."),
						"documentos" => $NombreDocumento, 
						"Estatus" => $list['Estatus'],
											"FechaSolicitud" => $list['FechaSolicitud'],
                                            "NombreVendedor" => $list['NombreVendedor'],
											"TipoPago" => $list['TipoPago'],
											"actions" => 
											'<div class="btn-group">
											<button class="btn btn-info btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											  <i class="fa fa-gear"></i> <span class="caret"></span>
											</button>
												<ul class="dropdown-menu dropdown-menu-right">
												  <li><a href="'.full_url.'/adm/solicitud_plan/index.php?action=edit&idSolicitudPlan='.$idSolicitudPlan.'"> <i class="fa fa-edit"></i> Editar</a></li>
												</ul>
										  </div>'.$indicador_documento_vacio.$indicador_respaldo
						);	
				}else
				{
                                        $plan_gruero = false;
                                        $plan_rcv = false;
                                        $planes_seleccionados = $SolicitudPlan -> getPlanesSeleccionados($idSolicitudPlan);
                                        if(count($planes_seleccionados)>0){
                                            foreach($planes_seleccionados as $seleccionados){
                                                if($seleccionados['Tipo']=='tugruero.com'){
                                                    $plan_tugruero = true;
                                                }
                                                if($seleccionados['Tipo']=='RCV'){
                                                    $plan_rcv= true;
                                                }
                                            } 
                                        }
					$planes_rcv = $SolicitudPlan->getPlanesRCV($idSolicitudPlan);
					if($plan_tugruero == true and $plan_rcv == true){
                                           
					$array_json['data'][] = array(
						"idSolicitudPlan" => $idSolicitudPlan,
						"Nombres" => $list['Nombres'],
						"Apellidos" => $list['Apellidos'],
						"Cedula" => $list['Cedula'],
						"Plan" => $list['concatenado_plan'],
						"Rif" => $list['Rif'],
						"PrecioTotal" => number_format($list['PrecioTotal'],2,",","."),
						"documentos" => $NombreDocumento, 
						"Estatus" => $list['Estatus'],
											"FechaSolicitud" => $list['FechaSolicitud'],
                                                                                        "NombreVendedor" => $list['NombreVendedor'],
											"TipoPago" => $list['TipoPago'],
											"actions" => 
											'<div class="btn-group">
											<button class="btn btn-info btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											  <i class="fa fa-gear"></i> <span class="caret"></span>
											</button>
												<ul class="dropdown-menu dropdown-menu-right">
												  <li><a href="'.full_url.'/adm/solicitud_plan/index.php?action=edit&idSolicitudPlan='.$idSolicitudPlan.'"> <i class="fa fa-edit"></i> Editar</a></li>
												  <li><a href="'.full_url.'/web/files/Cuadros/'.$list['NumProducto'].'.pdf" class="" target="_blank" title="Imprimir Cuadro"><i class="fa fa-file-pdf-o"></i> Cuadro Producto</a></li>
												  <li><a href="'.full_url.'/web/files/Cuadros/'.$list['PolizaAsistir'].'.pdf" class="" target="_blank" title="Imprimir RCV"><i class="fa fa-file-pdf-o"></i> Cuadro RCV</a></li>
												</ul>
										  </div>'.$indicador_documento_vacio.$indicador_respaldo
						);	
					}elseif($plan_tugruero == true and $plan_rcv == false){
					$array_json['data'][] = array(
						"idSolicitudPlan" => $idSolicitudPlan,
						"Nombres" => $list['Nombres'],
						"Apellidos" => $list['Apellidos'],
						"Cedula" => $list['Cedula'],
						"Plan" => $list['concatenado_plan'],
						"Rif" => $list['Rif'],
						"PrecioTotal" => number_format($list['PrecioTotal'],2,",","."),
						"documentos" => $NombreDocumento, 
						"Estatus" => $list['Estatus'],
											"FechaSolicitud" => $list['FechaSolicitud'],
                                                                                        "NombreVendedor" => $list['NombreVendedor'],
											"TipoPago" => $list['TipoPago'],
											"actions" => 
											'<div class="btn-group">
											<button class="btn btn-info btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											  <i class="fa fa-gear"></i> <span class="caret"></span>
											</button>
												<ul class="dropdown-menu dropdown-menu-right">
												  <li><a href="'.full_url.'/adm/solicitud_plan/index.php?action=edit&idSolicitudPlan='.$idSolicitudPlan.'"> <i class="fa fa-edit"></i> Editar</a></li>
												  <li><a href="'.full_url.'/web/files/Cuadros/'.$list['NumProducto'].'.pdf" class="" target="_blank" title="Imprimir Cuadro"><i class="fa fa-file-pdf-o"></i> Cuadro producto</a></li>
												</ul>
										  </div>'.$indicador_documento_vacio.$indicador_respaldo
						);	
                                        }elseif($plan_tugruero == false and $plan_rcv == true){
                                                $array_json['data'][] = array(
						"idSolicitudPlan" => $idSolicitudPlan,
						"Nombres" => $list['Nombres'],
						"Apellidos" => $list['Apellidos'],
						"Cedula" => $list['Cedula'],
						"Plan" => $list['concatenado_plan'],
						"Rif" => $list['Rif'],
						"PrecioTotal" => number_format($list['PrecioTotal'],2,",","."),
						"documentos" => $NombreDocumento, 
						"Estatus" => $list['Estatus'],
											"FechaSolicitud" => $list['FechaSolicitud'],
                                                                                        "NombreVendedor" => $list['NombreVendedor'],
											"TipoPago" => $list['TipoPago'],
											"actions" => 
											'<div class="btn-group">
											<button class="btn btn-info btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											  <i class="fa fa-gear"></i> <span class="caret"></span>
											</button>
												<ul class="dropdown-menu dropdown-menu-right">
												  <li><a href="'.full_url.'/adm/solicitud_plan/index.php?action=edit&idSolicitudPlan='.$idSolicitudPlan.'"> <i class="fa fa-edit"></i> Editar</a></li>
												  <li><a href="'.full_url.'/web/files/Cuadros/'.$list['PolizaAsistir'].'.pdf" class="" target="_blank" title="Imprimir RCV"><i class="fa fa-file-pdf-o"></i> Cuadro RCV</a></li>
												</ul>
										  </div>'.$indicador_documento_vacio.$indicador_respaldo
						);	 
                                        }
					

					
					
					
				}

			}		
		}else{
			$array_json['recordsTotal'] = 0;
			$array_json['recordsFiltered'] = 0;
			$array_json['data'][0] = array(
				"idSolicitudPlan"=>null,
				"Nombres"=>"",
				"Apellidos"=>"",
                                "Cedula"=>"",
                                "Plan"=>"",
                                "Rif"=>"",
                                "PrecioTotal" =>"",
								"documentos" => "",
                                "Estatus" => "",
                                "FechaSolicitud" => "",
                                "NombreVendedor" => "",
                                "TipoPago" => "",
				"actions"=>"");
		}
		echo json_encode($array_json);die;
		
	}
        function subirDocumentos($values,$files){
        $SolicitudDocumentos = new SolicitudDocumentos; 
        $idSolicitudPlan = $values['idSolicitudPlan'];
       
	$carpeta = "../../web/files/Solicitudes";
	$fichero_subido = $carpeta."/";
            //print_r($_FILES);die;
            if(isset($files['CedulaDoc']) and $files['CedulaDoc']['size']>0){
				
                $nombreArchivo = "Cedula_CCCT_".$values['idSolicitudPlan'].".".pathinfo($_FILES['CedulaDoc']['name'],PATHINFO_EXTENSION);
                if (move_uploaded_file($files['CedulaDoc']['tmp_name'], $fichero_subido.$nombreArchivo)){
                    //inserto en bd;
                    $NombreDocumento = $SolicitudDocumentos->getDocumentoByTipo($values['idSolicitudPlan'],"Cedula");
                    if($NombreDocumento == ''){
                        $SolicitudDocumentos->saveSolicitudDocumentos($idSolicitudPlan, "Cedula", $nombreArchivo);
                    }else{
                        $SolicitudDocumentos->updateSolicitudDocumentos($idSolicitudPlan, "Cedula", $nombreArchivo);
                    }
                        
                }

            }
        }
        function executeAprobar($values){
			
            $mail_poliza_tugruero = false;
            $PDFPagos = new PDFPagos();
            $idSolicitudPlan = @$values['idSolicitudPlan'];
            $VigenciaDesde = @$values['VigenciaDesde'];
            $VigenciaHasta = @$values['VigenciaHasta'];
            $idSolicitudPlan = @$values['idSolicitudPlan'];
			
            $SolicitudPlan = new SolicitudPlan();

            $SolicitudPlan->updateSeriales($values);
            $SolicitudAprobada = new SolicitudAprobada();
            $SolicitudAprobada->aprobar($idSolicitudPlan, $VigenciaDesde, $VigenciaHasta);
            
            
                $planes_seleccionados = $SolicitudPlan -> getPlanesSeleccionados($values['idSolicitudPlan']);
		if(count($planes_seleccionados)>0){
                    foreach($planes_seleccionados as $seleccionados){
                        if($seleccionados['Tipo']=='tugruero.com'){
                            $mail_poliza_tugruero = true;
                            $pdf = $PDFPagos->cuadroTUGRUERO($values);
                        }
                        if($seleccionados['Tipo']=='RCV'){
                            $planes_rcv = $SolicitudPlan->getPlanesRCV($idSolicitudPlan);
                            if(isset($planes_rcv['idPlan']) and $planes_rcv['idPlan']!=''){
                                    $Aseguradora = $planes_rcv['Aseguradora'];

                                    switch ($Aseguradora) {
                                            case 'Asistir':
                                                    $pdf2 = $PDFPagos->cuadroRCVAsistir($values);
                                                    break;

                                            default:
                                                    $pdf2 = $PDFPagos->cuadroRCVAsistir($values);
                                                    break;
                                    }

                            }                        
                            
                        }
                    }
                }
            
            
            
            
            

			
			$Mail = new Mail();
                        if($mail_poliza_tugruero == true){
                            //$Mail->sendMessagePolizaBienvenida($values);

                        }else{
                            //$Mail->sendMessagePolizaBienvenidaRCV($values);
                        }
			
        }
        function executeRechazar($values){
            
            $Observacion = $values['Observacion'];
            $idSolicitudPlan = $values['idSolicitudPlan'];
            $SolicitudPlan = new SolicitudPlan();
            $SolicitudPlan->rechazarSolicitud($idSolicitudPlan,$Observacion);
            
        }
	function executePrecioTugruero($values = null,$errors = array())
	{

            $array = array('precio' => '0');
            $Planes = new Planes();
            $Puestos = $values['Puestos'];
            $idPlan = $values['id_plan'];
            $precio_plan = 0;         
            if($idPlan!=''){
            $detalle_plan = $Planes->getDetallePlan($idPlan);
            $cantidad_servicios = $detalle_plan["CantidadServicios"];
            $kilometraje = $detalle_plan["Kilometraje"];
            $precio_plan = ($Planes->getPrecioPlan($idPlan));
            $precio_plan_formateado = number_format($precio_plan,2,",",".");
            $array= array("kilometraje"=>$kilometraje,"cantidad_servicios"=>$cantidad_servicios ,'precio' => $precio_plan_formateado, 'precio_sin_formato' => $precio_plan);  
            
            
             
            }else{
                $array= array('precio' => 0, 'precio_sin_formato' => 0);  
  
            }
            echo json_encode($array);
        }
	function executePrecioRcv($values = null,$errors = array())
	{

            $array= array('precio' => '0');
            $Planes = new Planes();
            $Puestos = $values['Puestos'];
            $idPlan = $values['id_plan'];
            $precio_plan = 0;
                if(isset($values['RCV']) and $values['RCV']=='SI' ){
                    $precio_rcv = $Planes->getPrecioRCV($Puestos);
                    $precio_plan = $precio_plan + $precio_rcv;
                     
                }
            $precio_plan_formateado = number_format($precio_plan,2,",",".");
            $array= array('precio' => $precio_plan_formateado, 'precio_sin_formato' => $precio_plan);  
            echo json_encode($array);
            
            
                
	}
