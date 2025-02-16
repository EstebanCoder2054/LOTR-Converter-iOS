//
//  IconGrid.swift
//  LOTRConverter
//
//  Created by Esteban Escobar on 4/02/25.
//

import SwiftUI

struct IconGrid: View {
    @State var selectedCurrency: CurrencyEnum
    
    var body: some View {
        // Grid - so we can display all items - the GridItem() X times is the amount of columns
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]){
            
            ForEach(CurrencyEnum.allCases){ item in
                // in SCOPE if both properties are called the same
                // We use self to declare the one that is closest to actuall scope of the function
                if item == selectedCurrency {
                    CurrencyItem(currencyImage: item.image, currencyName: item.name)
                        .shadow(color: .black, radius: 10)
                        .overlay{
                            RoundedRectangle(cornerRadius: 25).stroke(lineWidth: 3).opacity(0.5)
                        }
                } else {
                    CurrencyItem(currencyImage: item.image, currencyName: item.name).onTapGesture {
                        selectedCurrency = item
                    }
                }
                
            }
        }
    }
}

#Preview {
    IconGrid(selectedCurrency: .copperPenny)
}
