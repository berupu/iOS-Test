//
//  HomeView.swift
//  iOS Test
//
//  Created by Ashraful Islam Rupu on 6/1/22.
//

import SwiftUI

struct HomeView: View {
    
    var scrollImage = scrollImageArray
    
    var body: some View {
        ZStack {
            VStack {
                ScrollView(.horizontal, showsIndicators: false){
                    ScrollViewReader { scroll in
                        
                        HStack {
                            ForEach(scrollImage) { item in
                                if item.image == "scroll1" {
                                    Image(item.image)
                                        .resizable()
                                        .frame(width: 138, height: 234)
                                        .cornerRadius(9)
                                }else {
                                Image(item.image)
                                    .resizable()
                                    .frame(width: 99.68, height: 157.17)
                                    .cornerRadius(9)
                                }
                            }
                        }
                        .frame(height: screen.height * 0.30)
                    }
                    
                }
                .background(LinearGradient(colors: [Color.purple.opacity(0.3), Color.white, Color.green.opacity(0.3)], startPoint: .topLeading, endPoint: .bottomTrailing))
                
                
                ZStack {
                    ScrollView {
                        QuotesView()
                        QuotesView()
                        QuotesView()
                        QuotesView()
                    }
                    .offset(x: 0, y: 30)
                }
                .background(.black)
                .cornerRadius(30)
                .ignoresSafeArea()
                
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct ScrollImageModel: Identifiable {
    var id = UUID()
    var image: String
}

let scrollImageArray = [ScrollImageModel(image: "scroll2"), ScrollImageModel(image: "scroll1"), ScrollImageModel(image: "scroll3"), ScrollImageModel(image: "scroll2"),ScrollImageModel(image: "scroll3"), ScrollImageModel(image: "scroll2"),ScrollImageModel(image: "scroll3"), ScrollImageModel(image: "scroll2")]

let screen = UIScreen.main.bounds
