//
//  QuotesView.swift
//  iOS Test
//
//  Created by Ashraful Islam Rupu on 6/1/22.
//

import SwiftUI

struct QuotesView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Quotes")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer()
                
                Text("More")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                Image(systemName: "chevron.right")
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 27)
            Image("lifegoeson")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 375, height: 232)
                .padding(.horizontal, 27)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .padding(.top, 40)
    }
}

struct QuotesView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesView()
        
    }
}
