<?php

	/*
	 * To change this license header, choose License Headers in Project Properties.
	 * To change this template file, choose Tools | Templates
	 * and open the template in the editor.
	 */

	/**
	 * Description of Users
	 *
	 * @author marcos
	 */
	class Marcas {
		
		public function __construct() 
		{
			
		}
		public function getMarcasListSelect()
		{	
			
                        $ConnectionORM = new ConnectionORM();
			$q = $ConnectionORM->getConnect()->Marcas
			->select("*")
			->where("Estado = 'A'")
			->order("Marca asc");
			return $q; 			
		}
	




		



	}
	
