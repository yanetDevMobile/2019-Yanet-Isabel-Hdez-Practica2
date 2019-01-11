//
//  ViewController.swift
//  2019 Yanet Isabel Hdez Practica2
//
//  Created by usuario on 1/8/19.
//  Copyright © 2019 usuario. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayContac : [Persona] = helpers.init().leerContactos();
    @IBOutlet weak var tblContactos: UITableView!
    
    
        override func viewDidLoad() {
         
        super.viewDidLoad()
 
        self.tblContactos.delegate = self
        self.tblContactos.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "segue" {
      var   selectedpersona = arrayContac[(tblContactos.indexPathForSelectedRow?.row)!]
          //Obtenemos la referencia del siguiente view controller
     if let vcd = segue.destination as?
        DetalleContactoViewController{
        vcd.persona = selectedpersona
        }
        

           //Aqui pasas la variable de información al siguiente view controller

       
       }
    }
    
}




extension ViewController: UITableViewDelegate,  UITableViewDataSource{
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return arrayContac.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "Celda")
        cell.textLabel?.text  = arrayContac[indexPath.row].nombre
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "segue", sender: nil)
    }
}
    
  




