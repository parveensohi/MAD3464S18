//
//  DataHelper.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-08-01.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
import Foundation
class DataHelper{
    var FlightList = [Int : Flight]()
    var PassengerList = [Int : Passenger]()
    var AirlinesList = [Int : Airlines]()
    init(){
        self.loadFlight()
        self.loadPassengerData()
        self.loadAirlinesData()
        
    }
    
    func loadFlight(){
        FlightList = [:]
        do{
            let davinder = try Flight(flightID: 111, flightfrom: cityList.Paris, flightto: cityList.Toronto, flightschdate: "23/07/2018", flightairlineID: 23, flightairplaneID: "ppp", flightpilotID: "pl",flightlist: FlightTypelist.Aircanada,flightprice: 4.5)
            FlightList[davinder.flightID!] = davinder
            
            let parveen = try Flight(flightID: 112, flightfrom: cityList.Brampton, flightto: cityList.India, flightschdate: "30/07/2018", flightairlineID: 45, flightairplaneID: "ddd", flightpilotID: "ggg",flightlist: FlightTypelist.BritishAirways,flightprice : 2.3)
            FlightList[parveen.flightID!] = parveen
           
            let airways = try Flight(flightID: 113, flightfrom: cityList.India, flightto: cityList.Paris, flightschdate: "05/07/2018", flightairlineID: 26, flightairplaneID: "AAA", flightpilotID: "p2", flightlist: FlightTypelist.Delta, flightprice: 3.5)
            FlightList[airways.FlightID!] = airways
            
            let british = try Flight(flightID: 114, flightfrom: cityList.Brampton, flightto: cityList.Paris, flightschdate: "03/07/2018", flightairlineID: 27, flightairplaneID: "BBB", flightpilotID: "p3", flightlist: FlightTypelist.JetAirways, flightprice: 4.3)
            
        }catch{
            print("Error: \(error)")
        }
        
    }
    func displayFlight(){
        print("Flight Details")
        Util.drawLine()
        print("\t\t Flight ID \t\t Flight From \t\t Flight To \t\t flightschdate \t\t flightlist \t\t flightprice")
        for (_, value) in self.FlightList.sorted(by: { $0.key < $1.key }){
            Util.drawLine()
            print("\t \(value.FlightID!) ----------- \(value.Flightfrom) --------- \(value.Flightto) --------- \(value.Flightschdate!) --------\(value.Flighttypelist!) ------\(value.FlightPrice)")
        }
        Util.drawLine()
    }
    
    func searchFlight(flightID : Int) -> Flight?{
        if FlightList[flightID] != nil{
            return FlightList[flightID]! as Flight
        }
        else{
            print("Sorry..The search flight number you have entered is not available")
            return nil
        }
    }
    
    func loadPassengerData(){
        PassengerList = [:]
        
        let davinder = Passenger(passengerID: 101, passengerName: "davinder", address: "Brampton", email: "dav@gmail.com", passengerPassportNumber: "l6x5n3", mobile: "4478454645454", birthdate: "5/06/1994")
        PassengerList[davinder.PassengerID!] = davinder
        
        let parveen = Passenger(passengerID: 102, passengerName: "parveen", address: "newmarket", email: "psohi@GMAIL.COM", passengerPassportNumber: "H89101", mobile: "4167319287", birthdate: "22/03/1994")
        PassengerList[parveen.PassengerID!] = parveen
    }
    
    func displayPassenger(){
        for (_, value) in self.PassengerList.sorted(by: { $0.key < $1.key }){
            Util.drawLine()
            print(value.addPassenger())
        }
        Util.drawLine()
    }    //    open class DataHelper2{
    //
    //        var AirlinesList = [Int : Airlines]()
    //
    //
    //
    //        init(){
    //            self.loadAirlinesData()
    //
    //        }
    
    
    func loadAirlinesData(){
        AirlinesList = [:]
        
        let Jetairways =  Airlines(airlinesID: 101, airlinesDes: "AirCanada", airlinesType: AirportType.IndraGandhi)
        
        AirlinesList[Jetairways.AirlinesID!] = Jetairways
        
        let Britishairways =  Airlines(airlinesID: 102, airlinesDes: "BritishAirways", airlinesType: AirportType.PearsonAirport)
        
        AirlinesList[Britishairways.AirlinesID!] = Britishairways
        
        let AirIndia =  Airlines(airlinesID: 103, airlinesDes: "AirIndia", airlinesType: AirportType.IndraGandhi)
        AirlinesList[AirIndia.AirlinesID!] = AirIndia
        
        let Aircanada =  Airlines(airlinesID: 104, airlinesDes: "AirCanada", airlinesType: AirportType.PearsonAirport)
        
        AirlinesList[Aircanada.AirlinesID!] = Aircanada
    }
    
    func displayAirlines(){
        print("Airline Details")
        print("\t\t Airline ID \t\t Airline Des  \t\t Airlines Type \t\t ")
        for (_, value) in self.AirlinesList.sorted(by: { $0.key < $1.key }){
            // Util.drawLine()
            print("\t \(value.AirlinesID!) ----------- \(value.AirlinesDes) --------- \(value.AirlinesType)")
        }            //            for (_,air) in self.AirlinesList.sorted(by: { $0.key < $1.key} ){
        //
        //                print("\(air.displayData())")
        
        
    }
    
}
//    func displayFlight(){
//        //closure
//        for (_,prod) in FlightList.sorted(by: {$0.key < $1.key}){
//            print("\(prod.displayData())")
//        }
//    }
// }
    
