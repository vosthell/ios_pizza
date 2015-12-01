//
//  CuatroInterfaceController.swift
//  pizzaWatch
//
//  Created by Christian Kaiser on 28/11/15.
//  Copyright © 2015 Christian Kaiser. All rights reserved.
//

import WatchKit
import Foundation


class CuatroInterfaceController: WKInterfaceController {
    var tamanio : String?
    var masa : String?
    var queso: String?
    var Array = [String]()
    
    

    @IBOutlet var swJamon: WKInterfaceSwitch!
    @IBOutlet var swPepperoni: WKInterfaceSwitch!
    @IBOutlet var swPavo: WKInterfaceSwitch!
    @IBOutlet var swSalchicha: WKInterfaceSwitch!
    @IBOutlet var swAceituna: WKInterfaceSwitch!
    @IBOutlet var swPimiento: WKInterfaceSwitch!
    @IBOutlet var swCebolla: WKInterfaceSwitch!
    
    @IBOutlet var lbTotal: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c=context as! Valores
        //lblTamanio.setText(c.tamanio)
        tamanio = c.tamanio
        masa = c.masa
        queso = c.queso
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }


    @IBAction func irAConfirmar() {
        let valorContexto=Valores(d:tamanio!, e:masa!, f:queso!, g:String(Array.count))
        
        pushControllerWithName("vcConfirmar", context:valorContexto)
    }
    
    /*var seleccionados = 0
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
    
    
    }*/
    
    @IBAction func seleccionJamon(value: Bool) {
        var seleccionados = 0
        var indice : Int?
        seleccionados = Array.count
        
        if value == true{
            if(seleccionados>4)
            {
                lbTotal.setText("Solo se puede escoger 5 ingredientes\(seleccionados)")
                swJamon.setOn(false)
            }
            else
            {
                Array.append("JAMON")
            }
        }
        else
        {
            indice = Array.indexOf("JAMON")
            Array.removeAtIndex(indice!)
        }
        seleccionados = Array.count
        lbTotal.setText("\(seleccionados) Elementos seleccionados\(indice)")
    }

    @IBAction func seleccionPepperoni(value: Bool) {
        var seleccionados = 0
        var indice : Int?
        seleccionados = Array.count
        
        if value == true{
            if(seleccionados>4)
            {
                lbTotal.setText("Solo se puede escoger 5 ingredientes\(seleccionados)")
                swPepperoni.setOn(false)
            }
            else
            {
                Array.append("PEPPERONI")
            }
        }
        else
        {
            indice = Array.indexOf("PEPPERONI")
            Array.removeAtIndex(indice!)
        }
        seleccionados = Array.count
        lbTotal.setText("\(seleccionados) Elementos seleccionados\(indice)")
    }
    
    @IBAction func seleccionPavo(value: Bool) {
        var seleccionados = 0
        var indice : Int?
        seleccionados = Array.count
        
        if value == true{
            if(seleccionados>4)
            {
                lbTotal.setText("Solo se puede escoger 5 ingredientes\(seleccionados)")
                swPavo.setOn(false)
            }
            else
            {
                Array.append("PAVO")
            }
        }
        else
        {
            indice = Array.indexOf("PAVO")
            Array.removeAtIndex(indice!)
        }
        seleccionados = Array.count
        lbTotal.setText("\(seleccionados) Elementos seleccionados\(indice)")
    }
    
    @IBAction func seleccionSalchicha(value: Bool) {
        var seleccionados = 0
        var indice : Int?
        seleccionados = Array.count
        
        if value == true{
            if(seleccionados>4)
            {
                lbTotal.setText("Solo se puede escoger 5 ingredientes\(seleccionados)")
                swSalchicha.setOn(false)
            }
            else
            {
                Array.append("SALCHICHA")
            }
        }
        else
        {
            indice = Array.indexOf("SALCHICHA")
            Array.removeAtIndex(indice!)
        }
        seleccionados = Array.count
        lbTotal.setText("\(seleccionados) Elementos seleccionados\(indice)")
    }
    
    @IBAction func seleccionAceituna(value: Bool) {
        var seleccionados = 0
        var indice : Int?
        seleccionados = Array.count
        
        if value == true{
            if(seleccionados>4)
            {
                lbTotal.setText("Solo se puede escoger 5 ingredientes\(seleccionados)")
                swAceituna.setOn(false)
            }
            else
            {
                Array.append("ACEITUNA")
            }
        }
        else
        {
            indice = Array.indexOf("ACEITUNA")
            Array.removeAtIndex(indice!)
        }
        seleccionados = Array.count
        lbTotal.setText("\(seleccionados) Elementos seleccionados\(indice)")
    }
    
    @IBAction func seleccionCebolla(value: Bool) {
        var seleccionados = 0
        var indice : Int?
        seleccionados = Array.count
        
        if value == true{
            if(seleccionados>4)
            {
                lbTotal.setText("Solo se puede escoger 5 ingredientes\(seleccionados)")
                swCebolla.setOn(false)
            }
            else
            {
                Array.append("CEBOLLA")
            }
        }
        else
        {
            indice = Array.indexOf("CEBOLLA")
            Array.removeAtIndex(indice!)
        }
        seleccionados = Array.count
        lbTotal.setText("\(seleccionados) Elementos seleccionados\(indice)")
    }
    
    @IBAction func seleccionPimiento(value: Bool) {
        var seleccionados = 0
        var indice : Int?
        seleccionados = Array.count
        
        if value == true{
            if(seleccionados>4)
            {
                lbTotal.setText("Solo se puede escoger 5 ingredientes\(seleccionados)")
                swPimiento.setOn(false)
            }
            else
            {
                Array.append("PIMIENTO")
            }
        }
        else
        {
            indice = Array.indexOf("PIMIENTO")
            Array.removeAtIndex(indice!)
        }
        seleccionados = Array.count
        lbTotal.setText("\(seleccionados) Elementos seleccionados\(indice)")
    }
    
}
