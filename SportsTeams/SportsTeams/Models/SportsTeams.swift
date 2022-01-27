//
//  SportsTeams.swift
//  SportsTeams
//
//  Created by adam smith on 1/26/22.
//

import Foundation

class SportsTeams {
    
//MARK: - Properties
    // naming the variables for the table view and making them their desiered type
    var teamName: String
    var ranking: String
    var playerCount: Int?
    
//MARK: - Initializer
    // declaring the varibles and setting them to themselves and giving them a value.
    init(teamName: String, ranking: String, playerCount: Int?) {
        self.teamName = teamName
        self.ranking = ranking
        self.playerCount = playerCount
    }
}

extension SportsTeams: Equatable {
    static func == (lhs: SportsTeams, rhs: SportsTeams) -> Bool {
        lhs.teamName == rhs.teamName &&
        lhs.ranking == rhs.ranking &&
        lhs.playerCount == rhs.playerCount
    }
}
