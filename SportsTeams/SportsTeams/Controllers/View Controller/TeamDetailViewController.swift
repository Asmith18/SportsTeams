//
//  TeamDetailViewController.swift
//  SportsTeams
//
//  Created by adam smith on 1/26/22.
//

import UIKit

class TeamDetailViewController: UIViewController {

//MARK: - Outlets
    @IBOutlet weak var teamNameTextLabel: UILabel!
    @IBOutlet weak var teamNameTextField: UITextField!
    @IBOutlet weak var rankingTextLabel: UILabel!
    @IBOutlet weak var rankingTextField: UITextField!
    @IBOutlet weak var playerCountTextLabel: UILabel!
    @IBOutlet weak var playerCountTextField: UITextField!
    
//MARK: - LifeCycle
    
    var team: SportsTeams?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews(team: team)
    }
    
    
//MARK: - Actions
    @IBAction func saveButton(_ sender: Any) {
        guard let name = teamNameTextField.text, let rank = rankingTextField.text, let count = Int(playerCountTextField.text ?? "") else {return}
                    
        if let team = team {
            TeamsController.sharedInstance.updateTeam(team: team, teamName: name, ranking: rank, playerCount: count)
        } else {
            TeamsController.sharedInstance.createTeam(teamName: name, ranking: rank, playerCount: count)
            self.navigationController?.popViewController(animated: true)
        }
    }
    @IBAction func clearButton(_ sender: Any) {
        teamNameTextField.text = ""
        playerCountTextField.text = ""
        rankingTextField.text = ""
        
    }
    @IBAction func deleteButton(_ sender: Any) {
        
        if let team = team {
            TeamsController.sharedInstance.deleteTeam(team: team)
            self.navigationController?.popViewController(animated: true)
        }
    }
    //MARK: - Helper Functions
//
//    func updateUI(team: SportsTeams) {
//        teamNameTextField.text = team.teamName
//        playerCountTextField.text = "\(team.playerCount ?? 0)"
//        rankingTextField.text = team.ranking
    func updateViews(team: SportsTeams?) {
            guard let team = team else {return}
            teamNameTextField.text = team.teamName
            rankingTextField.text = team.ranking
            if let playerCount = team.playerCount {
                playerCountTextField.text = "\(playerCount)"
            }
        }
        
    }


