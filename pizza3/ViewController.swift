//
//  ViewController.swift
//  pizza3
//
//  Created by Christian Kaiser on 27/11/15.
//  Copyright © 2015 Christian Kaiser. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    //@IBOutlet weak var lblTamanio: UILabel!
    @IBOutlet weak var pckTamanio: UIPickerView!
    
    var respuesta = 0
    var respuesta2 : String = "GRANDE"
 
    var Array = ["GRANDE","PEQUENA","MEDIANA"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //pckTamanio.delegate = self
        //pckTamanio.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Delegates
    /*func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }*/
    
    
    
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Array.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        
        return 1
    }
    
/*//MARK: Delegates
func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
return pickerData[row]
}

func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
myLabel.text = pickerData[row]
}
*/


    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //respuesta = row
        respuesta2 = Array[row]
        //lblTamanio.text = respuesta2
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //self.performSegueWithIdentifier("segue_uno", sender: self)
        if segue.identifier == "segue_uno"
            {
                //let resultado = respuesta
                let sigVista = segue.destinationViewController as! DosViewController
                sigVista.tamanio = respuesta2
                
            }
       
    }


}

