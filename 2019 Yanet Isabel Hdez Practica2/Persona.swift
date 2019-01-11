//
//  Persona.swift
//  2019 Yanet Isabel Hdez Practica2
//
//  Created by usuario on 1/8/19.
//  Copyright © 2019 usuario. All rights reserved.
//

import Foundation
class Persona {
   var fechanacimiento: String
    var nombre: String
    var domicilio: String
    var edad :String
    var parentesco : String
    
    init(nombre: String,fechanacimiento: String, domicilio: String, edad:String, parentesco:String) {
        self.fechanacimiento = fechanacimiento;
        self.nombre=nombre;
        self.domicilio=domicilio;
        self.edad = edad
        self.parentesco = parentesco
        
    }
    
    
}
