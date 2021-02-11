//
//  CollectionViewCell.swift
//  MedalCase
//
//  Created by Farzaad Goiporia on 2021-02-10.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgView_XIB: UIImageView!
    @IBOutlet weak var lblTitle_XIB: UILabel!
    @IBOutlet weak var lblData_XIB: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    func addData(imgName: String, titleName: String, data: String){
        imgView_XIB.image = UIImage(named: imgName)
        lblTitle_XIB.text = titleName
        lblData_XIB.text = data
    }

}
