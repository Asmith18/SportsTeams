//
//  SportsTeamsTableViewController.swift
//  SportsTeams
//
//  Created by adam smith on 1/26/22.
//

import UIKit

class SportsTeamsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return TeamsController.sharedInstance.teams.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "teamCell", for: indexPath) as? SportsTeamsTableViewCell else {return UITableViewCell()}
                let team = TeamsController.sharedInstance.teams[indexPath.row]
        cell.updateViews(teams: team)
                
                
                
                return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let team = TeamsController.sharedInstance.teams[indexPath.row]
            TeamsController.sharedInstance.deleteTeam(team: team)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "todetailVC" {
            if let indexPath = tableView.indexPathForSelectedRow,
               let destination = segue.destination as? TeamDetailViewController {
                let team = TeamsController.sharedInstance.teams[indexPath.row]
                destination.team = team
            }
            
        }
    }
    
    
}
