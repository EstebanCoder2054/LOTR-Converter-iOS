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
    
    @State var topCurrency: CurrencyEnum
    @State var bottomCurrency: CurrencyEnum
    
    var body: some View {
        ZStack{
            
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                Text("Select the currency you are starting with:").fontWeight(.bold)
                //                expected param : actual value of the param (even tho they are called the same)
                IconGrid(selectedCurrency: topCurrency)
                
                Text("Select the currency you would like to convert to:").fontWeight(.bold).padding(.top)
                //                expected param : actual value of the param (even tho they are called the same)
                IconGrid(selectedCurrency: bottomCurrency)
                
                Button("Done") {
                    print("Done btn pressed")
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }.padding().multilineTextAlignment(.center).foregroundStyle(.black)
        }
    }
}

#Preview {
    SelectCurrency(topCurrency: .silverPenny, bottomCurrency: .goldPenny)
}
