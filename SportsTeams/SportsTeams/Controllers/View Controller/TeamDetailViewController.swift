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
        updateViews()
    }
    
    func updateViews() {
        
    }
    
//MARK: - Actions
    @IBAction func saveButton(_ sender: Any) {
    }
    @IBAction func clearButton(_ sender: Any) {
    }
    @IBAction func deleteButton(_ sender: Any) {
    }
    

}
