//
//  TresInterfaceController.swift
//  pizzaWatch
//
//  Created by Christian Kaiser on 28/11/15.
//  Copyright © 2015 Christian Kaiser. All rights reserved.
//

import WatchKit
import Foundation


class TresInterfaceController: WKInterfaceController {

    @IBOutlet var pckQueso: WKInterfacePicker!
    var tamanio : String?
    var masa : String?
    var queso : String?
    var itemList: [(String, String)] = [
        ("Item 1", "MOZARELA"),
        ("Item 2", "CHEDDAR"),
        ("Item 3", "PARMESANO"),
        ("Item 4", "SIN QUESO")
    ]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        /*var pickerItems:[WKPickerItem] = []
        
        let item = WKPickerItem()
        item.title = "MOZARELA"
        pickerItems.append(item)
        
        let item2 = WKPickerItem()
        item2.title = "CHEDDAR"
        pickerItems.append(item2)
        
        let item3 = WKPickerItem()
        item3.title = "PARMESANO"
        pickerItems.append(item3)
        
        let item4 = WKPickerItem()
        item4.title = "SIN QUESO"
        pickerItems.append(item4)
        
        self.pckQueso.setItems(pickerItems)
*/
        let pickerItems: [WKPickerItem] = itemList.map {
            let pickerItem = WKPickerItem()
            pickerItem.caption = $0.0
            pickerItem.title = $0.1
            return pickerItem
        }
        
        self.pckQueso.setItems(pickerItems)

        
        // Configure interface objects here.
        let c=context as! Valores
        //lblTamanio.setText(c.tamanio)
        tamanio = c.tamanio
        masa = c.masa
        
    }

    @IBAction func irAIngredientes() {
        let valorContexto=Valores(d:tamanio!, e:masa!, f:queso!)
        
        pushControllerWithName("vcIngredientes", context:valorContexto)
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    @IBAction func pckChangeDato(value: Int) {
        queso = String(itemList[value].1)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
