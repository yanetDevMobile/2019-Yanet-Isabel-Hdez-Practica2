//
//  DetalleContactoViewController.swift
//  2019 Yanet Isabel Hdez Practica2
//
//  Created by usuario on 1/8/19.
//  Copyright © 2019 usuario. All rights reserved.
//

import UIKit

class DetalleContactoViewController: UIViewController {
    var persona : Persona?
    
    @IBOutlet weak var parentescoLbl: UILabel!
    @IBOutlet weak var ubicacionLbl: UILabel!
    @IBOutlet weak var correoLbl: UILabel!
    @IBOutlet weak var fechaNacLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    
    var detalleContacto = [Persona]()
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = persona?.nombre
       correoLbl.text = persona?.edad
        fechaNacLbl.text = persona?.fechanacimiento
        ubicacionLbl.text = persona?.domicilio
        parentescoLbl.text = persona?.parentesco
        self.calculaCumpleaños()
        print(calculaCumpleaños())
        
        
       
        
        
      
        
        // Do any additional setup after loading the view.
    }
    
    func calculaCumpleaños() -> Int {
        
        let dateStringFormatter=DateFormatter();
        dateStringFormatter.dateFormat="dd-MM-yyyy";
        
        var dateFromString=dateStringFormatter.date(from: (persona?.fechanacimiento)!);
        
        var component = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: dateFromString!)
        component.year = Calendar.current.component(.year, from: Date())
        var alterdate =   Calendar.current.date(from: component)
        //      var newdate =  Calendar.current.date(bySetting: .year, value: Date(), of: dateFromString!)
        
        var edad=Calendar.current.dateComponents([.day], from: Date(),to:alterdate!);
        
        return Int(edad.day!);

    }
    
 
  @IBAction func compartirBtn(_ sender: UIButton) {
    if(calculaCumpleaños()<=5){
        let activityController = UIActivityViewController(activityItems:[NSLocalizedString("textCompartir", comment: "Feliz cumpleaños"),UIImage(named: "imagen.jpeg")], applicationActivities: nil)
        present(activityController,animated: true,completion: nil)
    }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
