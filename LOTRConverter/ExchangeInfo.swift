//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Esteban Escobar on 29/01/25.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        
        ZStack{
            
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                Text("Exchange Rates").font(.largeTitle).tracking(3)
                
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding()
                
                // Exchange rates - instances (props)
                ExchangeRateItem(leftImage: .goldpiece, text: "1 Gold Piece = 4 Gold Pennies", rightImage: .goldpenny)
                ExchangeRateItem(leftImage: .goldpenny, text: "1 Gold Penny = 4 Silver Pieces", rightImage: .silverpiece)
                ExchangeRateItem(leftImage: .silverpiece, text: "1 Silver Piece = 4 Silver Pennies", rightImage: .silverpenny)
                ExchangeRateItem(leftImage: .silverpenny, text: "1 Silver Penny = 100 Copper Pennies", rightImage: .copperpenny)

                
                Button("Done") {
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
                
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}
