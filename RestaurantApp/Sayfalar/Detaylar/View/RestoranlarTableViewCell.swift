//
//  RestoranlarTableViewCell.swift
//  RestaurantApp
//
//  Created by Oğuzhan Erdem on 1.10.2022.
//

import UIKit
import MapKit

class RestoranlarTableViewCell: UITableViewCell {
    @IBOutlet weak var imgRestoran : UIImageView!
    @IBOutlet weak var imgIsaret : UIImageView!
    @IBOutlet weak var lblRestoranAdi : UILabel!
    @IBOutlet weak var lblKonum : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
