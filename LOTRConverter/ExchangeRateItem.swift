//
//  ExchangeRateItem.swift
//  LOTRConverter
//
//  Created by Esteban Escobar on 29/01/25.
//

import SwiftUI

struct ExchangeRateItem: View {

    // props
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource


    var body: some View {
        HStack {
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
            
            Text(text)
            
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
        }
    }
}

// We can play around with the props in the preview as we're testing the component
// Can only be viewed with these props in this preview
#Preview {
    ExchangeRateItem(leftImage: .goldpenny, text: "Hi", rightImage: .silverpenny)
}
