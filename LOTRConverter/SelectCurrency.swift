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
    
    @State var selectedCurrency: CurrencyEnum
    
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
    SelectCurrency(selectedCurrency: .copperPenny)
}
