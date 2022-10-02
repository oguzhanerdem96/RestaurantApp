//
//  KonumView.swift
//  RestaurantApp
//
//  Created by Oğuzhan Erdem on 1.10.2022.
//

import UIKit

@IBDesignable class KonumView: TemelView {
    @IBOutlet weak var btnIzinVer : UIButton!
    @IBOutlet weak var btnReddet : UIButton!

    
    var izinVerdi : (() -> Void)?
    @IBAction func btnIzinVerClicked(_ sender: UIButton ){
        izinVerdi?()
    }
    @IBAction func btnReddetClicked(_ sender: UIButton ){
        
    }

}
