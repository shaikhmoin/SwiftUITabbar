//
//  HomeView.swift
//  TabviewController
//
//  Created by macOS on 10/08/23.
//

import SwiftUI

struct HomeView: View {
    
   // @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        
//        NavigationStack {
//            List {
//                Text("Home Content")
//                    .frame(height: 500)
//            }
//            .navigationTitle("Home Title")
//        }
        
        ZStack {
            
            VStack {
                HStack {
                    Button(action: {
                        //self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("menu")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .shadow(radius: 10.0, x: 20, y: 10)
                            .padding([.leading, .bottom], 15)
                    }
                    
                    Spacer()
                    
                    Text("Home Screen")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.bottom, 15)

                    Spacer()
                    Button(action: {}) {
                        Image("menu")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .shadow(radius: 10.0, x: 20, y: 10)
                            .padding([.trailing, .bottom], 15)
                            .hidden()
                    }
                }
                .frame(width: .infinity, height: 50)
                .background(.gray)
                
                NavigationStack {
                    List(1...10, id: \.self) { index in
                        NavigationLink(
                            destination: Text("Item #\(index) Details"),
                            label: {
                                Text("Item #\(index)")
                                    .font(.system(size: 20, weight: .bold, design: .rounded))

                            })
                    }
//                    .navigationTitle("Home Title")
//                    .navigationBarHidden(true)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
