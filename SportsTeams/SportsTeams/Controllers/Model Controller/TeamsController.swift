//
//  TeamsController.swift
//  SportsTeams
//
//  Created by adam smith on 1/26/22.
//

import Foundation

class TeamsController {
    
//MARK: - Singleton
    
    // declaring the variable sharedInstance that has a value of our class initialized so i can be used anywhere an accessed in our project.
    static let sharedInstance = TeamsController()
    
//MARK: - Source of Truth
    
    // we are declaring teams is a type of sportsteams which is an array and has a value of empty array.
    var teams: [SportsTeams] = []
    
//MARK: - CRUD
    
    // when creating a new team we need to know the name,rank,player count so we have to pass in the initializers then declare a new variable that gives the ints a value and lastly we need to apend those values to the new variable.
    func createTeam(teamName: String, ranking: String, playerCount: Int) {
        let newTeam = SportsTeams(teamName: teamName, ranking: ranking, playerCount: playerCount)
        teams.append(newTeam)
    }
    
    //when updating an existing team we need to know what we are updating and what variables we are updating by using ints. then we need to pass those varibales to whatever team we tapped and giving them a new value.
    func updateTeam(team: SportsTeams, teamName: String, ranking: String, playerCount: Int) {
        team.teamName = teamName
        team.ranking = ranking
        team.playerCount = playerCount
    }
    
    // when deleting a team all we need to knoiw is what team the user is trying to delete
    func deleteTeam(teams: SportsTeams) {

    }
}
