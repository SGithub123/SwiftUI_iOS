//
//  HomeScreen.swift
//  LoginScreenSwiftUI
//
//  Created by Sanket Bhamare on 09/09/21.
//

import SwiftUI

struct HomeScreen: View {
    
    
    private var gridItems : [GridItem] = [GridItem(),GridItem(),GridItem(),GridItem(),GridItem()]
    
    var imgArr = [Constants.user,Constants.facebook,Constants.instagram,Constants.facebook,Constants.instagram]
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ScrollView() {
                    VStack {
                        ScrollView(.horizontal) {
                            LazyVGrid(columns: gridItems, content: {
                                ForEach(0...gridItems.count, id: \.self) { indx in
                                    
                                    if indx == 0 {
                                        Image(imgArr[0])
                                            .resizable()
                                            .frame(width: 80, height: 80)
                                            .clipShape(Circle())
                                            .aspectRatio(contentMode: .fit)
                                    } else {
                                        Image(imgArr[2])
                                            .resizable()
                                            .frame(width: 80, height: 80)
                                            .clipShape(Circle())
                                            .aspectRatio(contentMode: .fit)
                                    }
                                }
                            }).frame(width: geometry.size.width, height: geometry.size.height, alignment: .leading)
                        }.frame(width: geometry.size.width, height: 100, alignment: .leading)
                        
                        Spacer(minLength: 50)
                        
                        VStack {
                            HStack {
                                Image(Constants.user)
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 50, height: 50)
                                Text("Sanket Bhamare")
                            }.frame(width: geometry.size.width, height: 100, alignment: .leading)
                            .padding(EdgeInsets(top: 8, leading: 16, bottom: 0, trailing: 0))
                            Image(Constants.backgroundImg)
                                .resizable()
                                .clipped()
                                .frame(width: geometry.size.width, height: 400, alignment: .center)
                            HStack() {
                                Spacer(minLength: 1)
                                HStack() {
                                    Image("heart")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                    Image("comment")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                    Image("send")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                }
                                Spacer()
                                Spacer()
                                Spacer()
                                
                                Image("save")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                Spacer(minLength: 1)
                            }
                            HStack {
                                Image(Constants.user)
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 50, height: 50)
                                Text("Sanket Bhamare")
                            }.frame(width: geometry.size.width, height: 100, alignment: .leading)
                            .padding(EdgeInsets(top: 8, leading: 16, bottom: 0, trailing: 0))
                            Image(Constants.backgroundImg)
                                .resizable()
                                .clipped()
                                .frame(width: geometry.size.width, height: 400, alignment: .center)
                            HStack() {
                                
                                HStack() {
                                    Image("heart")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                    Image("comment")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                    Image("send")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                }
                                Spacer()
                                Image("save")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                            }
                            
                        }
                    }
                }
                
            }
        }.navigationBarTitle(Constants.instagram.capitalized,displayMode: .inline)
        .navigationBarItems(leading:  Button(action: {}, label: {
            Image(Constants.instagram)
                .resizable()
                .frame(width: 30, height: 30)
        }))
        .navigationBarItems(trailing: Button(action: {}, label: {
            Image("send")
                .resizable()
                .frame(width: 30, height: 30)
        }))
        
    }
    
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
