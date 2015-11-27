//
//  2ViewController.swift
//  pizza3
//
//  Created by Christian Kaiser on 27/11/15.
//  Copyright © 2015 Christian Kaiser. All rights reserved.
//

import UIKit

class DosViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

   
    @IBOutlet weak var pckMasa: UIPickerView!
    @IBOutlet weak var lblTamanio: UILabel!
    var respuestaMasa : String = "DELGADA"
    var Array = ["DELGADA","CRUJIENTE","GRUESA"]
    var tamanio: String?
    //var tamanioLocal: String?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        lblTamanio.text = tamanio
        //lblMasa.text = masa
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        respuestaMasa = Array[row]
        //lbltamanio.text = String(respuesta)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "segue_dos"
        {
            let resultado = respuestaMasa
            //let resultado = respuestaMasa
            let sigVista = segue.destinationViewController as! TresViewController
            sigVista.tamanio = lblTamanio.text
            sigVista.masa = resultado
            
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
