//
//  CategoryView.swift
//  iOS Test
//
//  Created by Ashraful Islam Rupu on 6/1/22.
//

import SwiftUI

struct CategoryView: View {
    @State var viewState = CGSize.zero
    @State var showFull = false
    
    var body: some View {
        ZStack{
            
            VStack {
                Image("category1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                BottomCategoryView()
                    .offset(y: viewState.height)
                    .padding(.horizontal,7)
                //.frame(height: viewState.height)
                    .gesture(
                        DragGesture()
                            .onChanged({ (value) in
                                
                                withAnimation {
                                    self.viewState = value.translation
                                }
                                if self.viewState.height > -20 {
                                    self.showFull.toggle()
                                }
                                
                                
                            })
                            .onEnded({ (value) in
                                
                                if viewState.height < -20 {
                                    viewState.height = .zero
                                    viewState.height += -290
                                }else {
                                    self.viewState = .zero
                                }
                                
                            })
                    )
            }
        }
        .frame(width: screen.width, height: screen.height)
        .background(.black)
        .ignoresSafeArea()
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
