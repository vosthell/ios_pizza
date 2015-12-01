//
//  CincoInterfaceController.swift
//  pizzaWatch
//
//  Created by Christian Kaiser on 28/11/15.
//  Copyright © 2015 Christian Kaiser. All rights reserved.
//

import WatchKit
import Foundation


class CincoInterfaceController: WKInterfaceController {
    //var tamanio : String?
    //var masa : String?
    //var queso: String?
    //var ingredientes: String?

    @IBOutlet var lblTamanio: WKInterfaceLabel!
    @IBOutlet var lblMasa: WKInterfaceLabel!
    @IBOutlet var lblQueso: WKInterfaceLabel!
    @IBOutlet var lblIngredientes: WKInterfaceLabel!
    
    @IBOutlet var lblMensaje: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c=context as! Valores
        //lblTamanio.setText(c.tamanio)
        lblTamanio.setText(c.tamanio)
        lblMasa.setText(c.masa)
        lblQueso.setText(c.queso)
        lblIngredientes.setText(c.numero_ingredientes)
    }

    @IBAction func btnCocinarAction() {
        lblMensaje.setText("LISTA")
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
