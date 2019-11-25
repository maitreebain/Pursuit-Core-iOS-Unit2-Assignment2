//
//  DetailViewController.swift
//  GameOfThrones
//
//  Created by Maitree Bain on 11/24/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var seasonLabel: UILabel!
    @IBOutlet weak var episodeLabel: UILabel!
    @IBOutlet weak var runtimeLabel: UILabel!
    @IBOutlet weak var airdateLabel: UILabel!
    
    var episode: GOTEpisode?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        seasonLabel.text = "Season: \(String(describing: episode!.season))"
        episodeLabel.text = "Episode: \(String(describing: episode!.number))"
        runtimeLabel.text = "Runtime: \(String(describing: episode!.runtime)) minutes"
        airdateLabel.text = "AirDate: \(String(describing: episode!.airdate))"
        imageView.image = UIImage(named: episode!.originalImageID.description)
        textView.text = episode!.summary
    }
    

}
