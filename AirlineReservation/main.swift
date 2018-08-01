//
//  main.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-08-01.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")


var choice = 1
let dataHelper = DataHelper()
var flight = Flight()
var passen = Passenger()
var reser = Reservation()


while choice != 5{
    print("\n----What would you like to do today !----")
    print("\t 1 : Show Flight ")
    print("\t 2 : Add Flight ")
  
    print("\t 3 : Add Reservation")
    print("\t 4 : Cancel Reservation ")
    print("\t 5 : Exit ")
    print("-----------------------------------------")
    print("Enter you choice please : ")
    choice = (Int)(readLine()!)!
    
    switch choice{
    case 1:
    dataHelper.displayFlight()
        
    case 2:
   passen.addPassenger()
  case 3:
        reser.addReservation()
    case 4:
           Reservation().cancelReservation()
    case 5:
        exit(0)
    case 6 :
        let show = Flight()
        print(show.displayData())
        break
    default:
        print("Please enter valid menu option.")
    }
}

