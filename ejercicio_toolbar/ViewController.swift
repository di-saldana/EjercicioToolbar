//
//  ViewController.swift
//  ejercicio_toolbar
//
//  Created by Dianelys Saldaña on 11/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var toolBar: UIToolbar!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var segmentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Vamos a añadir la imagen de fondo como un imageView, pero esta vez sin usar el storyboard (por hacerlo distinto)
        let iv = UIImageView(image:UIImage(named:"fondo_madera.png"))
        iv.frame = CGRect(x:0, y:0, width:self.toolBar.frame.size.width, height:44)
        iv.autoresizingMask = UIView.AutoresizingMask.flexibleWidth

        // Añadimos la subview
        self.toolBar.insertSubview(iv, at:0)

        // Cambiamos el color del SegmentedControl
        self.segmentedControl.tintColor=UIColor.brown

        // Personalizamos el TextField desde código (también se podría hacer desde el Interface Builder)
        self.textField.textColor = UIColor.white
        self.textField.borderStyle = UITextField.BorderStyle.none
        self.textField.background = UIImage(named:"fondo_textfield.png")
        self.textField.placeholder = "Escribe aquí"
    }

    @IBAction func segmentedControlIndexChanged(_ sender: Any) {
        self.segmentLabel.text = self.segmentedControl.selectedSegmentIndex == 0 ? "Segmento 1" : "Segmento 2"
    }
}

