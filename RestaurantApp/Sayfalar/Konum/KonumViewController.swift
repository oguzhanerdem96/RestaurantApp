//
//  KonumViewController.swift
//  RestaurantApp
//
//  Created by Oğuzhan Erdem on 1.10.2022.
//

import UIKit

class KonumViewController: UIViewController {

    @IBOutlet weak var konumView : KonumView!


    var konumServis : KonumServis?
    override func viewDidLoad() {
        super.viewDidLoad()

        konumView.izinVerdi = {
            print("Kullanıcı izin verdi")
        }
       
    }
    

   

}
