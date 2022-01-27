
//  SportsTeamsTableViewCell.swift
//  SportsTeams
//
//  Created by adam smith on 1/26/22.


import UIKit

class SportsTeamsTableViewCell: UITableViewCell {

    @IBOutlet weak var teamNametextLabel: UILabel!
    @IBOutlet weak var playerCountTextLabel: UILabel!
    @IBOutlet weak var rankTextLabel: UILabel!
    

    func updateViews(teams: SportsTeams) {
        teamNametextLabel.text = teams.teamName
        playerCountTextLabel.text = "Player Count: \(teams.playerCount ?? 0)"
        rankTextLabel.text = teams.ranking
    }
}

