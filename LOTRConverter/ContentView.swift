//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Esteban Escobar on 18/01/25.
//

import SwiftUI

struct ContentView: View {
    
    // stored properties - pretty similar to a state - since it changes the value we use var instead of let
    @State var showExchangeInfo = false
    @State var showSelectCurrency = false
    //    ---
    
    @State var leftAmount = "" // for the text field
    @State var rightAmount = "" // for the text field
    //    ---
    @State var leftCurrency: CurrencyEnum = .silverPiece
    @State var rightCurrency: CurrencyEnum = .goldPiece
    
    var body: some View {
        ZStack {
            // Background image
            // name of the image (literal -> name in assets)
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            
            VStack {
                // Prancing pony image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                // Currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                // Conversion section - since this is a compound component it will have more stacks inside of it
                HStack {
                    // Left conversion section
                    VStack{
                        // Currency
                        HStack {
                            // Currency image
                            Image(leftCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            // Currency text
                            Text(leftCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .padding(.bottom, -5)
                        .onTapGesture{
                            showSelectCurrency.toggle()
                        }
                        // Left Text field
                        // Bindings are used to keep the input and the stored property in sync ($ -> binding var)
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    // Equal sign - this come from SF Symbols - in this case system name is required because "equal" is not part of our Assets
                    Image(systemName: "equal")
                        .font(.largeTitle) // In the case of SF symbols we can treat them as if they were Text Views
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    // Right conversion section
                    VStack{
                        // Currency
                        HStack {
                            // Currency text
                            Text(rightCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                            // Currency image
                            Image(rightCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .padding(.bottom, -5)
                        .onTapGesture{
                            showSelectCurrency.toggle()
                        }
                        
                        // Right Text field
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.buttonBorder)
                
                
                Spacer()
                
                HStack{
                    Spacer()
                    // Info button
                    Button {
                        // stored property change
                        //.toggle() comes from the boolean prototype
                        showExchangeInfo.toggle();
                        // \(sometext) -> this is string interpolation
                        print("showExchangeInfo value: \(showExchangeInfo)")
                    } label: {
                        // It's better to have the button modifiers inside the label
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing) 
                }
            }
        }
        .sheet(isPresented: $showExchangeInfo) { // This a function modifier - modify the functionality
            ExchangeInfo()
        }
        .sheet(isPresented: $showSelectCurrency) { // This a function modifier - modify the functionality
            SelectCurrency(topCurrency: $leftCurrency, bottomCurrency: $rightCurrency)
        }
    }
}

#Preview {
    ContentView()
}
