//
//  Flight.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-08-01.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

typealias FlightTypelist = (flightID: Int, flight: Flight,quantity: Int)

class Flight {
    var flightID : Int?
    var flightfrom : cityList
    var flightto : cityList
    var flightschdate : String?
    var flightairlineID : Int?
    var flightairplaneID : String?
    var flightpilotID : String?
    var flightlist : FlightTypelist?
    var flightprice : Double?
    
    var FlightID : Int? {
        get{ return self.flightID }
        set{ self.flightID = newValue}
    }
    var Flightfrom : cityList {
        get { return self.flightfrom }
        set { self.flightfrom = newValue }
    }
    var Flightto : cityList {
        get{ return self.flightto }
        set{ self.flightto = newValue}
    }
    var Flightschdate : String? {
        get{ return self.flightschdate}
        set{ self.flightschdate = newValue}
    }
    var FlightairlineID : Int?{
        get{ return self.flightairlineID}
        set{ self.flightairlineID = newValue}
    }
    var FlightairplaneID : String?{
        get{ return self.flightairplaneID}
        set{ self.flightairplaneID = newValue}
    }
    var FlightpilotID : String?{
        get{ return self.flightpilotID}
        set{ self.flightpilotID = newValue}
    }
    var Flighttypelist : FlightTypelist?{
        get{ return self.flightlist}
        set{ self.flightlist = newValue}
    }
    var FlightPrice : Double?{
        get{ return self.flightprice}
        set{ self.flightprice = newValue}
    }
    
    init(){
        self.flightID = 0
        self.flightfrom = cityList.None
        self.flightto = cityList.None
        self.flightschdate = ""
        self.flightairlineID = 0
        self.flightairplaneID = ""
        self.flightpilotID = ""
        self.flightlist = FlightTypelist.None
        self.flightprice = 0.0
        
    }
    init(flightID : Int, flightfrom : cityList, flightto : cityList, flightschdate : String, flightairlineID : Int, flightairplaneID : String, flightpilotID : String,flightlist : FlightTypelist,flightprice : Double){
        self.flightID = flightID
        self.flightfrom = flightfrom
        self.flightto = flightto
        self.flightschdate = flightschdate
        self.flightairlineID = flightairlineID
        self.flightairplaneID = flightairplaneID
        self.flightpilotID = flightpilotID
        self.flightlist = flightlist
        self.flightprice = flightprice
    }
    
    func displayData() -> String {
        
        var returnData = ""
        
        returnData += " Flight ID : \(self.FlightID ?? 0)"
        returnData += "\n Flight From : \(self.Flightfrom ?? cityList.None)"
        returnData += "\n Flight To : \(self.Flightto ?? cityList.None)"
        returnData += "\n Flight Schedule Date: \(self.Flightschdate ?? "")"
        returnData += "\n Flight Airline ID : \(self.flightairlineID ?? 0)"
        returnData += "\n Flight Airplane ID : \(self.flightairplaneID ?? "")"
        returnData += "\n Flight Pilot ID : \(self.flightpilotID ?? "")"
        returnData += "\n Flight List : "
        if !self.Flighttypelist.isEmpty{
            for (_, flight, qty) in self.Flighttypelist{
                returnData += "\n \tFlight : \(flight.displayData())"
                returnData += "\n \tQuantity : \(qty)"
            }
        }else{
            returnData += "\n No flight in the list"
        }
        returnData += "\n Flight Price : \(self.flightprice ?? 0.0)"
        return returnData
        
        
        //        print("Flight ID : \(self.flightID ?? 0)")
        //        print("Flight From : \(self.flightfrom ?? "Unknown")")
        
        //        print("Flight To : \(self.flightto ?? "Unknown")")
        //        print("Flight Schedule Date : \(self.flightschdate ?? "Unknown")")
        //        print("Flight Airline ID : \(self.flightairlineID ?? 0)")
        //        print("Flight Airplane ID : \(self.flightairplaneID ?? "Unknown")")
        //        print("Flight Pilot ID : \(self.flightpilotID ?? "Unknown")")
        //           print("Flight Type List : \(self.flightTypelist ?? "Unknown")")
        //    }
        //
    }
    
    //var returnData = ""
    //        returnData += "\t \(self.flightID) ------ \(_(self.flightfrom.rawValue)) ------ \(_(self.flightto.rawValue)) ------ \(self.flightschdate) ------ \(self.flightairlineID)-----\(self.flightairplaneID)-----\(self.flightpilotID)-----\(self.flightTypelist ?? "")"
    //return returnData
    //  }
//    func newFlight(){
//
//        print("Enter flight ID : ")
//        self.flightID = (Int)(readLine()!)
//        print("Enter Location  : ")
//        for flightfrom in cityList.allCases
//        {
//            print("Enter \(flightfrom.rawValue) for \(flightfrom)")
//        }
//        let choice = (Int)(readLine()!)
//        self.flightfrom = cityList(rawValue: choice!)!
//
//        print("Enter Destination : ")
//        for flightto in cityList.allCases
//        {
//            print("Enter \(flightto.rawValue) for \(flightto)")
//        }
//        _ = (Int)(readLine()!)
//        self.flightto = cityList(rawValue: choice!)!
//
//        print("Enter Schedule Date  : ")
//        self.flightschdate = readLine()!
//        print("Enter  Airline ID : ")
//        self.flightairlineID = (Int)(readLine()!)
//
//        print("Enter Price   : ")
//        self.flightprice = (Double)(readLine()!)
//
//        //    print("Please choose product category : ")
//        //    for category in ProductCategory.allCases{
//        //        print("Enter \(category.rawValue) for  \(category)")
//        //    }
//        //    let choice = (Int)(readLine()!) ?? 5
//        //    self.category = ProductCategory(rawValue: choice)
//        //
//        print("Enter Pilot ID  : ")
//        self.flightpilotID = readLine()!
//
//        print("Enter  flightlist  : ")
//       for flightlist in FlightTypelist.allCases
//        {
//           print("Enter \(flightlist.rawValue) for \(flightlist)")
//       }
//       let c = (Int)(readLine()!) ?? 5
//        self.flightlist = FlightTypelist(rawValue: c)!
//
//
    
    //}
}
