//
//  Enumeration.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-08-01.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
enum PlanetypeCategory: Int, CaseIterable {
    case Boeing = 1
    case Airbus = 2
    case Lockheed = 3
    case None = 4
    
}
enum FlightTypelist : Int, CaseIterable {
    case Aircanada = 1
    case Delta = 2
    case BritishAirways = 3
    case JetAirways = 4
    case None = 5
}
enum cityList : Int, CaseIterable
{
    case Toronto = 1
    case Paris = 2
    case Brampton = 3
    case India = 4
    case None = 5
}

enum ResStatuslist : CaseIterable
{
    case Reserved
    case Confirmed
    case Cancelled
    case NotReseved
}

enum ReservationMealtype : Int,CaseIterable
{
    case Vegetarian = 1
    case Nonvegetarian = 2
    case None = 3
}

enum AirportType : Int, CaseIterable{
    case IndraGandhi = 1
    case PearsonAirport = 2
    case None = 3
}

enum ProductError: Error, CustomStringConvertible {
    case InvalidProductID
    case InvalidProductPrice(Int)
    
    var description: String {
        switch self {
        case .InvalidProductID:
            return "Invalid product id"
        case .InvalidProductPrice(let flightID):
            return "Invalid product price for product id :: \(flightID)"
        }
    }
}
extension CaseIterable where Self: Hashable {
    static var allCases: [Self] {
        return [Self](AnySequence { () -> AnyIterator<Self> in
            var raw = 0
            var first: Self?
            return AnyIterator {
                let current = withUnsafeBytes(of: &raw) { $0.load(as: Self.self) }
                if raw == 0 {
                    first = current
                } else if current == first {
                    return nil
                }
                raw += 1
                return current
            }
        })
    }
}
