//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Esteban Escobar on 18/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background image
            Image(.background) // name of the image
            
            VStack {
                // Prancing pony image
                
                // Currency exchange text
                
                // Conversion section - since this is a compound component it will have more stacks inside of it
                HStack {
                    // Left conversion section
                    VStack{
                        // Currency
                        HStack {
                            // Currency image
                            
                            // Currency text
                        }
                        
                        // Text field
                    }
                    
                    // Equal sign
                    
                    // Right conversion section
                    VStack{
                        // Currency
                        HStack {
                            // Currency text
                            
                            // Currency image
                        }
                        
                        // Text field
                    }
                }
                
                // Info button
            }
        }
    }
    
    
}

#Preview {
    ContentView()
}
