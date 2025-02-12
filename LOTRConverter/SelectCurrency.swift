//
//  SelectCurrencyy.swift
//  LOTRConverter
//
//  Created by Esteban Escobar on 4/02/25.
//

import SwiftUI

struct SelectCurrency: View {
    
    // expose dismiss functionality so this view/modal can get dismissed
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                Text("Select the currency you are starting with:").fontWeight(.bold)
                
                // Grid - so we can display all items - the GridItem() X times is the amount of columns
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]){
                    CurrencyItem(currencyImage: .goldpiece, currencyName: "Gold Piece")
                    
                    //                    ForEach(){
                    //
                    //                    }
                    
                }
                
                
                Text("Select the currency you would like to convert to:").fontWeight(.bold)
                //                HStack{
                //                    CurrencyItem(currencyImage: .goldpiece, currencyName: "Gold Piece")
                //
                //                }
                
                Button("Done") {
                    print("Done btn pressed")
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }.padding().multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency()
}
