//
//  Planetype.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-08-01.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class PlaneType {
    
    var planetypeID : Int?
    var planetotalseats : String?
    var planetypemap : String?
    var planeTypeCategory : PlanetypeCategory?
    
    var PlaneTypeID : Int? {
        get{ return self.planetypeID }
        set{ self.planetypeID = newValue}
    }
    var PlaneTotalSeats : String? {
        get{ return self.planetotalseats }
        set{ self.planetotalseats = newValue}
    }
    var PlaneTypeMap : String? {
        get{ return self.planetypemap }
        set{ self.planetypemap = newValue}
        //
        //        for row in 0...2{
        //        //    for col in 0...2{
        //        //        if row == 0{
        //        print("\(seatmap[row])\(row + 1)")
        //        //        }
        //        //        print(seatmap[row][col])
        //        //    }
    }
    var PlaneCategory : PlanetypeCategory? {
        get{ return self.planeTypeCategory }
        set{ self.planeTypeCategory = newValue}
        
    }
    
    init(){
        self.planetypeID = 0
        self.planetotalseats = ""
        self.planetypemap = ""
        self.planeTypeCategory = PlanetypeCategory.None
    }
    
    init(planetypeID: Int, planetotalseats: String, planetypemap: String, planeTypeCategory: PlanetypeCategory){
        self.planetypeID = planetypeID
        self.planetotalseats = planetotalseats
        self.planetypemap = planetypemap
        self.planeTypeCategory = planeTypeCategory
    }
    
    func displayData() -> String {
        //        var returnData = ""
        //
        //        returnData += "\n Plane Type ID : \(self.planetypeID ?? 0)"
        //        returnData += "\n Plane Total Seats : \(self.planetotalseats ?? "" )"
        //        returnData += "\n Plane Type Map : \(self.planetypemap ?? "" )"
        //        returnData += "\n Plane Type Category : \(self.planeTypeCategory ?? PlanetypeCategory.None)"
        //        return returnData
        var returnData = ""
        returnData += "\t \(self.planetypeID ?? 0) ------ \(self.planetotalseats ?? "") ------ \(self.planetypemap ?? "") ------ \(self.planeTypeCategory ?? PlanetypeCategory.None) ------)"
        return returnData    }
    
    func newPlanetype(){
        print("Enter Plane Type ID : ")
        self.planetypeID = (Int)(readLine()!)
        print("Enter Plane Total Seats : ")
        self.planetotalseats = readLine()
        print("Enter Plane Type Map : ")
        self.planetypemap = readLine()
        // print("Enter Plane Type Category : ")
        // self.planeTypeCategory = (Int)(readLine()!)
        print("Please choose from the following product categories")
        for planeTypeCategory in PlanetypeCategory.allCases{
            print("Enter \(planeTypeCategory.rawValue) for \(planeTypeCategory)")
        }
        let choice = (Int)(readLine()!) ?? 4
        self.planeTypeCategory = PlanetypeCategory(rawValue: choice)
    }
}
