//
//  FavouriteView.swift
//  eShoppingAssignent
//
//  Created by Shriram Kadam on 11/12/22.
//


import SwiftUI

struct FavouriteView: View {
    
    @Binding var items:[Product]
    @Binding var cart:[Product]
    @Binding var favorites:[Product]
    @State private var isEditing:Bool = false
    
    var cartTotal:Double {
        get {
            items.reduce(0) { (res, prod) -> Double in
                res + (prod.price.first?.value ?? 0)
            }
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 18){
                
                HStack{
                    Text("Favourite")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)
                    Spacer(minLength: 0)
                }
            }
            .padding(.top, 20)
            .padding(.horizontal)
            
            
            ZStack {
                
                if items.count == 0 {

                    VStack(alignment: .center, spacing: 4) {
                        Spacer()
                        Image(systemName: "bag.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.gray)
                            .frame(width: 40, height: 40, alignment: .center)
                            .padding(.bottom, 20)
                            .font(Font.system(size: 16, weight: .bold, design: .rounded))
                        Text("No Products To Display")
                            .font(Font.system(size: 17, weight: .semibold, design: .rounded))
                            .foregroundColor(Color.gray)
                        Spacer()
                    }
                    .padding(.bottom, 10)
                    .navigationBarTitle("Favourite list", displayMode: .inline)
                    
                }
            }
            .padding(.bottom, 10)
            
            ScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .leading, spacing: 8){
                    ForEach(items, id: \.id) { item in
                        HStack {
                            if #available(iOS 15.0, *) {
                                ProductListCellView(product: item, cart: self.$cart, favorites: self.$favorites)
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, 8)
                            } else {
                                // Fallback on earlier versions
                            }
                            
                        }
                        .padding(.horizontal)
                    }
                    GeometryReader { geometry in

                    }
                }
              
                .fixedSize(horizontal: false, vertical: true)
                .padding(.top, 20)
                .padding(.bottom, 100)
                .padding(.horizontal)
            }
        }
        
    }
}



