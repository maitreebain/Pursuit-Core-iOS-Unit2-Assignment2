//
//  EpisodeCell.swift
//  GameOfThrones
//
//  Created by Maitree Bain on 11/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class EpisodeCell: UITableViewCell {

    @IBOutlet weak var episodeImageView: UIImageView!
    @IBOutlet weak var episodeNameLabel: UILabel!
    @IBOutlet weak var seasonEpLabel: UILabel!
    
    func configueCell(for episode: GOTEpisode) {
        
        episodeImageView.image = UIImage(named: episode.mediumImageID)
        episodeNameLabel.text = episode.name
        seasonEpLabel.text = episode.season.description
    }
    
}
