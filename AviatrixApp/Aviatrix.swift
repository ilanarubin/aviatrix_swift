//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    let maxFuel = 5000.0
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    var running = false
    var author : String
    var data = AviatrixData()
    var location = "St. Louis"
    var distanceTraveled = 0
    var fuelCost = 0.0
    
    init (authorName : String){
        author = authorName
    }
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() -> Double {
        let refuelAmount = maxFuel - fuelLevel
        fuelLevel = 5000.0
        return refuelAmount
    }
    
    func flyTo(destination : String) {
        distanceTraveled += distanceTo(currentLocation: location, target: destination)
        fuelLevel -= Double(distanceTraveled)/milesPerGallon
        location = destination
    }
    
    func distanceTo(currentLocation : String , target : String) -> Int {
        return data.knownDistances[currentLocation]![target]!
    }
    
    func knownDestinations() -> [String] {
        return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
