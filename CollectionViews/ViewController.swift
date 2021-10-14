//
//  ViewController.swift
//  CollectionViews
//
//  Created by Field Employee on 10/13/21.
//

import UIKit

let reuseIdentifier = "cellIdentifier"

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: UICollectionViewFlowLayout())
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        collectionView.dataSource = self
        
        
        self.view.addSubview(collectionView)
        
    }

    //Collectionview methods
     
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         100
     }
     
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as UICollectionViewCell
         cell.backgroundColor = self.randomColor()
         
         return cell
     }
     
     func randomColor() -> UIColor {
         let red = CGFloat(drand48())
         let green = CGFloat(drand48())
         let blue = CGFloat(drand48())
         
         return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
     }

}

