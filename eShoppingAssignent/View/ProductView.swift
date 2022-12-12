//
//  ProductView.swift
//  eShoppingAssignent
//
//  Created by Shriram Kadam on 11/12/22.
//

import SwiftUI

struct ProductView: View {
    
    @StateObject var productViewModel = ProductViewModel()
    @Binding var cart:[Product]
    @Binding var favorites:[Product]
    @Binding var products:[Product]
    
    var body: some View {
        
        var prods: [[Product]] = []
        _ = (products).publisher
            .collect(products.count % 2 == 1 ? (products.count / 2) + 1 : (products.count / 2))
            .collect()
            .sink(receiveValue: { prods = $0 })
        
         return NavigationView() {
           // ScrollView(.vertical, showsIndicators: true) {
             
                List {
                  
                    ForEach(productViewModel.results, id: \.id) { product in
                   
                        if #available(iOS 15.0, *) {
                            NavigationLink(destination:
                                            ProductDetailView(product: product, cart: self.$cart, favorites: self.$favorites)
                                .padding(.horizontal, 16)
                            ) {
                                ProductListCellView(product: product, cart: self.$cart, favorites: self.$favorites)
                            }
                            .buttonStyle(PlainButtonStyle())
                        } else {
                            // Fallback on earlier versions
                        }
                    }
                    
                }
                .navigationBarTitle(Text("Product List"))
                .padding(.vertical)
                .padding(.horizontal)
                .padding(.bottom, 20)
                .background(Color.clear)
                        
                .onAppear {
                    productViewModel.getAllShoppingItems()
                }
            //}
           
        }
    }
}


