//
//  Currency.swift
//  LOTRConverter
//
//  Created by Esteban Escobar on 4/02/25.
//

// If we don't set the raw value - Swift is going to automatically assign the raw value as the index of the enum case in the array of cases.
// And for the case of string enums the raw value is going to be the same as the case key.

import SwiftUI

// Double is the type of the raw value
// CaseIterable means that we just converted this enum in something iterable (an array)
// Identifiable means that each case/property of the enum is totally unique (UUID)
enum CurrencyEnum: Double, CaseIterable, Identifiable {
    
    case copperPenny = 6400
    case silverPenny = 64
    case silverPiece = 16
    case goldPenny = 4
    case goldPiece = 1
    
    var id: CurrencyEnum { self }

    
    // image is going to return an ImageResource
    // This is a computed property
    var image: ImageResource {
        switch self { // it will look up for the "self" attributes
        case .copperPenny:
                .copperpenny
        case .silverPenny:
                .silverpenny
        case .silverPiece:
                .silverpiece
        case .goldPenny:
                .goldpenny
        case .goldPiece:
                .goldpiece
        }
    }
    
    // computed property
    var name: String {
        switch self {
        case .copperPenny:
            "Copper Penny"
        case .silverPenny:
            "Silver Penny"
        case .silverPiece:
            "Silver Piece"
        case .goldPenny:
            "Gold Penny"
        case .goldPiece:
            "Gold Piece"
        }
    }
}
