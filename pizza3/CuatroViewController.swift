//
//  CuatroViewController.swift
//  pizza3
//
//  Created by Christian Kaiser on 27/11/15.
//  Copyright © 2015 Christian Kaiser. All rights reserved.
//

import UIKit

class CuatroViewController: UIViewController {
    @IBOutlet weak var swPepperoni: UISwitch!
    
    @IBOutlet weak var swJamon: UISwitch!
    @IBOutlet weak var swPimiento: UISwitch!
    @IBOutlet weak var swCebolla: UISwitch!
    @IBOutlet weak var swAceituna: UISwitch!
    @IBOutlet weak var swSalchicha: UISwitch!
    @IBOutlet weak var swPavo: UISwitch!
  
    
    @IBOutlet weak var lblMensaje: UILabel!
    var tamanio : String?
    var masa : String?
    var queso : String?
    
    var respuestaIngredientes = [String]()

    @IBOutlet weak var lblTamanio: UILabel!
    @IBOutlet weak var lblMasa: UILabel!
    @IBOutlet weak var lblQueso: UILabel!
    
    var Array = [String]()
    //var Array: Set = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
       

        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        lblTamanio.text = tamanio
        lblMasa.text = masa
        lblQueso.text = queso
    }

  
    @IBAction func modificarPimiento(sender: UISwitch) {
        var seleccionados = 0
        var indice : Int?
        seleccionados = Array.count
        
        if swPimiento.on {

            if(seleccionados>4)
            {
                lblMensaje.text = "Solo se puede escoger 5 ingredientes\(seleccionados)"
                swPimiento.setOn(false, animated:true)
            
            }
            else
            {
                //if swPimiento.on {
                    Array.append("PIMIENTO")
                    //myTextField.text = "The Switch is Off"
                    //println("Switch is on")
                    //mySwitch.setOn(false, animated:true)
                //} else {
                  //  indice = Array.indexOf("PIMIENTO")
                    //Array.removeAtIndex(indice!)
                    //myTextField.text = "The Switch is On"
                    //mySwitch.setOn(true, animated:true)
                //}
                
            
            }
        }
        else {
            indice = Array.indexOf("PIMIENTO")
            Array.removeAtIndex(indice!)
            //myTextField.text = "The Switch is On"
            //mySwitch.setOn(true, animated:true)
        }
        seleccionados = Array.count
        lblMensaje.text = "\(seleccionados)Elementos seleccionados\(indice)"


    }
    @IBAction func modificarCebolla(sender: UISwitch) {
        var seleccionados = 0
        var indice : Int?
        seleccionados = Array.count
            if swCebolla.on {
                if(seleccionados>4)
                {
                    lblMensaje.text = "Solo se puede escoger 5 ingredientes\(seleccionados)"
                    swCebolla.setOn(false, animated:true)
                    
                }
                else
                {

                Array.append("CEBOLLA")
                //myTextField.text = "The Switch is Off"
                //println("Switch is on")
                //mySwitch.setOn(false, animated:true)
                }
            } else {
                indice = Array.indexOf("CEBOLLA")
                Array.removeAtIndex(indice!)
                //myTextField.text = "The Switch is On"
                //mySwitch.setOn(true, animated:true)
            }
            seleccionados = Array.count
            lblMensaje.text = "\(seleccionados)Elementos seleccionados\(indice)"
            
        

    }
    @IBAction func modificarAceituna(sender: UISwitch) {
        var seleccionados = 0
        var indice : Int?
        seleccionados = Array.count
        
            if swAceituna.on {
                if(seleccionados>4)
                {
                    lblMensaje.text = "Solo se puede escoger 5 ingredientes\(seleccionados)"
                    swAceituna.setOn(false, animated:true)
                    
                }
                else
                {
Array.append("ACEITUNA")
                //myTextField.text = "The Switch is Off"
                //println("Switch is on")
                }
                //mySwitch.setOn(false, animated:true)
            } else {
                indice = Array.indexOf("ACEITUNA")
                Array.removeAtIndex(indice!)
                //myTextField.text = "The Switch is On"
                //mySwitch.setOn(true, animated:true)
            }
            seleccionados = Array.count
            lblMensaje.text = "\(seleccionados)Elementos seleccionados\(indice)"
            
        

    }
    @IBAction func modificarSalchicha(sender: UISwitch) {
        var seleccionados = 0
        var indice : Int?
        seleccionados = Array.count
        
            if swSalchicha.on {
                if(seleccionados>4)
                {
                    lblMensaje.text = "Solo se puede escoger 5 ingredientes\(seleccionados)"
                    swSalchicha.setOn(false, animated:true)
                    
                }
                else
                {
                Array.append("SALCHICHA")
                //myTextField.text = "The Switch is Off"
                //println("Switch is on")
                //mySwitch.setOn(false, animated:true)
                }
            } else {
                indice = Array.indexOf("SALCHICHA")
                Array.removeAtIndex(indice!)
                //myTextField.text = "The Switch is On"
                //mySwitch.setOn(true, animated:true)
            }
            seleccionados = Array.count
            lblMensaje.text = "\(seleccionados)Elementos seleccionados\(indice)"
            
        

    }
    @IBAction func modificarPavo(sender: UISwitch) {
        var seleccionados = 0
        var indice : Int?
        
            if swPavo.on {
                seleccionados = Array.count
                if(seleccionados>4)
                {
                    lblMensaje.text = "Solo se puede escoger 5 ingredientes\(seleccionados)"
                    swPavo.setOn(false, animated:true)
                    
                }
                else
                {
                Array.append("PAVO")
                //myTextField.text = "The Switch is Off"
                //println("Switch is on")
                //mySwitch.setOn(false, animated:true)
                }
            } else {
                indice = Array.indexOf("PAVO")
                Array.removeAtIndex(indice!)
                //myTextField.text = "The Switch is On"
                //mySwitch.setOn(true, animated:true)
            }
            seleccionados = Array.count
            lblMensaje.text = "\(seleccionados)Elementos seleccionados\(indice)"
            
        

    }
    @IBAction func modificarPepperoni(sender: UISwitch) {
        var seleccionados = 0
        var indice : Int?
        
            if swPepperoni.on {
                seleccionados = Array.count
                if(seleccionados>4)
                {
                    lblMensaje.text = "Solo se puede escoger 5 ingredientes\(seleccionados)"
                    swPepperoni.setOn(false, animated:true)
                    
                }
                else
                {
                Array.append("PEPPERONI")
                //myTextField.text = "The Switch is Off"
                //println("Switch is on")
                //mySwitch.setOn(false, animated:true)
                }
            } else {
                indice = Array.indexOf("PEPPERONI")
                Array.removeAtIndex(indice!)
                //myTextField.text = "The Switch is On"
                //mySwitch.setOn(true, animated:true)
            }
            seleccionados = Array.count
            lblMensaje.text = "\(seleccionados)Elementos seleccionados\(indice)"
            
        

    }
        @IBAction func modificarJamon(sender: UISwitch) {
            var seleccionados = 0
            var indice : Int?
            seleccionados = Array.count
            if swJamon.on {
                    if(seleccionados>4)
                    {
                        lblMensaje.text = "Solo se puede escoger 5 ingredientes\(seleccionados)"
                        swJamon.setOn(false, animated:true)
                        
                    }
                else
                    {
                        Array.append("JAMON")
                        //myTextField.text = "The Switch is Off"
                        //println("Switch is on")
                        //mySwitch.setOn(false, animated:true)
                }

                
                } else {
                    indice = Array.indexOf("JAMON")
                    Array.removeAtIndex(indice!)
                    //myTextField.text = "The Switch is On"
                    //mySwitch.setOn(true, animated:true)
                }
                               seleccionados = Array.count
                lblMensaje.text = "\(seleccionados)Elementos seleccionados\(indice)"
            
            
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "segue_confirmacion"
        {
            let resultado = Array
            //let resultado = respuestaMasa
            let sigVista = segue.destinationViewController as! CincoViewController
            sigVista.tamanio = lblTamanio.text
            sigVista.masa = lblMasa.text
            sigVista.queso = lblQueso.text
            sigVista.ingredientes = resultado

            
        }
        if segue.identifier == "retroceder"
        {
            //let resultado = respuestaMasa
            //let resultado = respuestaMasa
            //let sigVista = segue.destinationViewController as! TresViewController
            //sigVista.tamanio = String(lblTamanio.text)
            //sigVista.masa = String(resultado)
            
        }
    }
    
    
   
    
/*
    @IBAction func jamon(value: Bool) {
        //var isRunning = value
        if value{
            Array.append("JAMON")
        }else{
            let indice = Array.indexOf("JAMON")
            //Array.removeAtIndex(Int(indice!))
        }
        
        let seleccionados = Array.count
        lblMensaje.text = "\(seleccionados)Elementos seleccionados"
    }*/
    
    
    /*@IBAction func pepperoni(value: Bool) {
        if value{
            Array.append("PEPPERONI")
        }else{
            let indice = Array.indexOf("PEPPERONI")
            //Array.removeAtIndex(Int(indice!))
        }
        
        let seleccionados = Array.count
        lblMensaje.text = "\(seleccionados)Elementos seleccionados"
    }
    
    @IBAction func salchicha(value: Bool) {
        if value{
            Array.append("SALCHICHA")
        }else{
            let indice = Array.indexOf("SALCHICHA")
            //Array.removeAtIndex(Int(indice!))
        }
        
        let seleccionados = Array.count
        lblMensaje.text = "\(seleccionados)Elementos seleccionados"
    }
    
    @IBAction func pavo(value: Bool) {
        if value{
            Array.append("PAVO")
        }else{
            let indice = Array.indexOf("PAVO")
            //Array.removeAtIndex(Int(indice!))
        }
        
        let seleccionados = Array.count
        lblMensaje.text = "\(seleccionados)Elementos seleccionados"
        
    }*/
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
