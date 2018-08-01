//
//  Airlines.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-08-01.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Airlines {
    
    var airlinesID : Int?
    var airlinesDes : String?
    var airlinesType : AirportType?
    
    
    var AirlinesID : Int? {
        get{ return self.airlinesID }
        set{ self.airlinesID = newValue}
    }
    var AirlinesDes : String? {
        get{ return self.airlinesDes }
        set{ self.airlinesDes = newValue}
    }
    var AirlinesType : AirportType? {
        get{ return self.airlinesType ?? AirportType.None}
        set{ self.airlinesType = newValue}
    }
    
    
    init(){
        self.airlinesID = 0
        self.airlinesDes = ""
        self.airlinesType = AirportType.None
        
    }
    
    init(airlinesID: Int, airlinesDes: String, airlinesType: AirportType){
        self.airlinesID = airlinesID
        self.airlinesDes = airlinesDes
        
        self.airlinesType = airlinesType
        
    }
    
    func displayData() -> String {
        var returnData = ""
        
        returnData += "\n Airlines ID : \(self.airlinesID ?? 0)"
        returnData += "\n Airlines Description : \(self.airlinesDes ?? "" )"
        returnData += "\n Airlines Type : \(self.airlinesType ?? AirportType.None )"
        
        return returnData
    }
    
    func loadAirlinesData(){
        print("Enter Airlines ID : ")
        self.airlinesID = (Int)(readLine()!)
        
        
        
        print("Enter Airlines Description : ")
        self.airlinesDes = readLine()
        print("Enter Airlines Type : ")
        for airlinesType in AirportType.allCases
        {
            print("Enter \(airlinesType.rawValue) for \(airlinesType)")
        }
        let choice = (Int)(readLine()!) ?? 5
        self.airlinesType = AirportType(rawValue: choice)
        
         print("Please choose from the following product categories")
        for airlinesType in AirportType.allCases{
            print("Enter \(airlinesType.rawValue) for \(airlinesType)")
    }
    // let choice = (Int)(readLine()!) ?? 5
    // self.airlinesType = String(rawValue: choice)
    }
}
