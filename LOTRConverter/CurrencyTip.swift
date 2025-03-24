//
//  CurrencyTip.swift
//  LOTRConverter
//
//  Created by Esteban Escobar on 15/03/25.
//

import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    
    var message: Text? = Text("Tap left or right currency images to display the Select Currency Screen")
    
    var image: Image? = Image(systemName: "hand.tap.fill")
    
}
