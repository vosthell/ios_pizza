//
//  CincoViewController.swift
//  pizza3
//
//  Created by Christian Kaiser on 27/11/15.
//  Copyright © 2015 Christian Kaiser. All rights reserved.
//

import UIKit

class CincoViewController: UIViewController {

    @IBOutlet weak var lblCocinar: UILabel!
    @IBOutlet weak var lblQueso: UILabel!
    @IBOutlet weak var lblMasa: UILabel!
    @IBOutlet weak var lblTamanio: UILabel!
    @IBOutlet weak var lblIngredientes: UILabel!
    
    var tamanio : String?
    var masa : String?
    var queso : String?
    var ingredientes = [String]()

    
    
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
        lblIngredientes.text = String(ingredientes.count)
    }
    
    
    @IBAction func cocinar(sender: AnyObject) {
        if(ingredientes.count>0)
        {
            lblCocinar.text = "LISTO"
        }
        else
        {
            lblCocinar.text = "FALTAN INGREDIENTES"

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
