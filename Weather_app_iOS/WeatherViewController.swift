//
//  WeatherViewController.swift
//  Weather_app_iOS
//
//  Created by Nicks on 03.08.2020.
//  Copyright © 2020 Nicks. All rights reserved.
//

import UIKit

class WeatherViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()



    }

 

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }

    override func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        cell.weather.text = "30 C"
        cell.time.text = "30.08.2017 18:00"
        
        return cell
    }


}
