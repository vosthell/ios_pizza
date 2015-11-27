//
//  3ViewController.swift
//  pizza3
//
//  Created by Christian Kaiser on 27/11/15.
//  Copyright © 2015 Christian Kaiser. All rights reserved.
//

import UIKit

class TresViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pckQueso: UIPickerView!
    @IBOutlet weak var lblMasa: UILabel!
    @IBOutlet weak var lblTamanio: UILabel!
    var respuestaQueso : String = "MOZARELLA"
    var tamanio : String?
    var masa : String?
    
    var Array = ["MOZARELLA","CHEDDAR","PARMESANO", "SIN QUESO"]
    
    
    
    
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
    }
    
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
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //respuestaMasa = row
        respuestaQueso = Array[row]
        //lbltamanio.text = String(respuesta)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "segue_tres"
        {
            let resultado = respuestaQueso
            //let resultado = respuestaMasa
            let sigVista = segue.destinationViewController as! CuatroViewController
            sigVista.tamanio = lblTamanio.text
            sigVista.masa = lblMasa.text
            sigVista.queso = resultado
            
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
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
