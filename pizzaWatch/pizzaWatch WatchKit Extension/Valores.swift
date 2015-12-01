//
//  Valores.swift
//  pizzaWatch
//
//  Created by Christian Kaiser on 27/11/15.
//  Copyright © 2015 Christian Kaiser. All rights reserved.
//

import WatchKit

class Valores: NSObject {
    var tamanio:String=""
    var masa:String=""
    var queso:String=""
    var numero_ingredientes=""
    
    init(d:String)
    {
        tamanio=d
    }
    
    init(d:String, e:String)
    {
        tamanio=d
        masa=e
    }
    
    init(d:String, e:String, f:String)
    {
        tamanio=d
        masa=e
        queso=f
    }
    
    init(d:String, e:String, f:String, g:String)
    {
        tamanio=d
        masa=e
        queso=f
        numero_ingredientes=g
    }

}
