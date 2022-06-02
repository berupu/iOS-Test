//
//  CategoryModel.swift
//  iOS Test (iOS)
//
//  Created by Ashraful Islam Rupu on 6/2/22.
//

import Foundation

struct CategoryModel: Identifiable {
    var id = UUID()
    var categoryName: String
    var index : Int
    var item: [Item]
    
}

//Dummy Data

let categoryData = [
    CategoryModel(categoryName: "Nature", index: 0, item: [Item(image: "category1"),Item(image: "category2"),Item(image: "category3")]),
    CategoryModel(categoryName: "Colors", index: 1, item: [Item(image: "category2"),Item(image: "category3"),Item(image: "category4")]),
    CategoryModel(categoryName: "Texture", index: 2, item: [Item(image: "category3"),Item(image: "category1"),Item(image: "category2")]),
    CategoryModel(categoryName: "SuperHe", index: 3, item: [Item(image: "category4"),Item(image: "category3"),Item(image: "category2")]),
]
