//
//  ViewController.swift
//  GameOfThrones
//
//  Created by Alex Paul on 11/16/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var episode = [[GOTEpisode]]() {
        didSet {
            tableView.reloadData()
        }
    }

    
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.dataSource = self
    episode = GOTEpisode.seasonSections()
  }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episode[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: EpisodeCell!
        
        if indexPath.section % 2 == 0 {
            guard let epCell = tableView.dequeueReusableCell(withIdentifier: "evenCell", for: indexPath) as?
                EpisodeCell else {
                fatalError("no evenCell found")
            }
            cell = epCell
        } else {
            guard let epCell = tableView.dequeueReusableCell(withIdentifier: "oddCell", for: indexPath) as? EpisodeCell else {
                fatalError("no oddCell found")
            }
            cell = epCell
        }
        
        
        let oneEpInfo = episode[indexPath.section][indexPath.row]
        
        cell.configueCell(for: oneEpInfo)
        
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
