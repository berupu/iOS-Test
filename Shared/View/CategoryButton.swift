//
//  CategoryButton.swift
//  iOS Test (iOS)
//
//  Created by Ashraful Islam Rupu on 6/2/22.
//

import SwiftUI

struct CategoryButton: View {
    var name: String
    var index: Int
    @Binding var selected : Int
    
    
    var body: some View {
        
        Button {
            selected = index
        } label: {
            VStack(spacing: 4) {
                Text(name)
                    .font(.system(size: 21).bold())
                    .foregroundColor(selected == index ? .yellow : .white)
                if selected == index {
                    Divider()
                        .frame(height: 4)
                        .background(selected == index ? .yellow : .white)
                        .padding(.top, 4)
                }
            }
        }
        .padding(.horizontal, 6)    }
}


struct CategoryButton_Previews: PreviewProvider {
    static var previews: some View {
        CategoryButton(name: "", index: 0, selected: .constant(1))
    }
}
