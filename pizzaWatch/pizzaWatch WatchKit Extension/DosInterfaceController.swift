//
//  DosInterfaceController.swift
//  pizzaWatch
//
//  Created by Christian Kaiser on 27/11/15.
//  Copyright © 2015 Christian Kaiser. All rights reserved.
//

import WatchKit
import Foundation


class DosInterfaceController: WKInterfaceController {
    
    var tamanio:String?
    var masa:String?
    var itemList: [(String, String)] = [
        ("Item 1", "DELGADO"),
        ("Item 2", "CRUJIENTE"),
        ("Item 3", "GRUESA")
    ]

    @IBOutlet var pckMasa: WKInterfacePicker!
    //@IBOutlet var lblTamanio: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        /*var pickerItems:[WKPickerItem] = []
        
        let item = WKPickerItem()
        item.title = "DELGADO"
        pickerItems.append(item)
        
        let item2 = WKPickerItem()
        item2.title = "CRUJIENTE"
        pickerItems.append(item2)
        
        let item3 = WKPickerItem()
        item3.title = "GRUESA"
        pickerItems.append(item3)
*/
        
        let pickerItems: [WKPickerItem] = itemList.map {
            let pickerItem = WKPickerItem()
            pickerItem.caption = $0.0
            pickerItem.title = $0.1
            return pickerItem
        }
        
        self.pckMasa.setItems(pickerItems)

        
        
        let c=context as! Valores
        //lblTamanio.setText(c.tamanio)
        tamanio = c.tamanio
        
        // Configure interface objects here.
        
        
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func pckChangeValor(value: Int) {
        masa = String(itemList[value].1)
    }
    
    @IBAction func irAQueso() {
        let valorContexto=Valores(d:tamanio!, e:masa!)
        pushControllerWithName("vcQueso", context:valorContexto)
    }
}
