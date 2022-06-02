//
//  BottomCategoryView.swift
//  iOS Test
//
//  Created by Ashraful Islam Rupu on 6/1/22.
//

import SwiftUI

import SwiftUI

struct BottomCategoryView: View {
    
    @StateObject var buttonTap = ButtonTap()
    private let threeColumns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack {
            VStack {
                HStack{
                    ForEach(categoryData) {item in
                        
                        CategoryButton(name: item.categoryName, index: item.index, selected: $buttonTap.selected)
                    }
                }
                .padding()
                
                LazyVGrid(columns: threeColumns,spacing: 10) {
                    ForEach(categoryData) {category in
                        Image("category3")
                            .resizable()
                            .frame(width: 124, height: 218)
                        
                    }
                }
            }
            
        }
        //.padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

struct BottomCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        BottomCategoryView()
    }
}

