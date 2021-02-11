//
//  ViewController.swift
//  MedalCase
//
//  Created by Farzaad Goiporia on 2021-01-24.
//

import UIKit
class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    var prec_imgs = ["longest_run","highest_elevation","fastest_5k","fastest_10k","fastest_half_marathon","fastest_marathon"]
    
    var vrec_imgs = ["virtual_half_marathon_race","tokyo-hakone-ekiden-2020","virtual_10k_race","hakone_ekiden","mizuno_singapore_ekiden","virtual_5k_race"]
    
    var prec_titles = ["Longest Run","Highest Elevation","Fastest 5K","10K","Half Marathon","Marathon"]
    
    var vrec_titles = ["Virtual Half Marathon Race","Tokya-Hakone Ekiden 2020","Virtual 10K Race","Hakone Ekiden","Mizuno Singapore Ekiden 2015","Virtual 5K Race"]
    
    var prec_data = ["00:00","2095 ft","00:00","00:00:00","00:00","Not Yet"]
    
    var vrec_data = ["00:00","00:00:00","00:00:00","00:00:00","00:00:00","23:07"]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }
        else if section == 1{
            return prec_titles.count
        }
        else if section == 2{
            return 1
        }
        else{
            return vrec_titles.count
        }
        
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 || indexPath.section == 2{
            return CGSize(width: self.view.frame.width, height: 40)
        }
        else{
            return CGSize(width: (self.view.frame.width/2), height: collectionView.frame.width/1.5)
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "title1", for: indexPath) as! CollectionViewCell
        
        if indexPath.section == 0{
            let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "title1", for: indexPath) as! CollectionViewCell
            print(indexPath.row)
            
            return cell
        }
        if indexPath.section == 1{
            let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
            
            cell.addData(imgName: prec_imgs[indexPath.row], titleName: prec_titles[indexPath.row], data: prec_data[indexPath.row])
            print(indexPath.row)
            return cell
        }
        if indexPath.section == 2{
            let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "title2", for: indexPath) as! CollectionViewCell
            print(indexPath.row)
            return cell
            
        }
        if indexPath.section == 3{
            let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
            
            cell.addData(imgName: vrec_imgs[indexPath.row], titleName: vrec_titles[indexPath.row], data: vrec_data[indexPath.row])
            print(indexPath.row)
            return cell
        }
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barTintColor = UIColor(red: 0x630000, green: 0x00C600, blue: 0x0000D4, alpha: 0.1)
        
        let nibCell = UINib(nibName: "CollectionViewCell", bundle: nil)
        myCollectionView.register(nibCell, forCellWithReuseIdentifier: "cell")
    }
    


}

