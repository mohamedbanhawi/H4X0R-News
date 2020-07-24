//
//  ContentView.swift
//  H4X0R News
//
//  Created by Mohamed Elbanhawi on 25/7/20.
//  Copyright © 2020 Mohamed Elbanhawi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // subscribe to updates
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List (networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack{
                        Text("\(post.points)")
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("H4X0R NEWS")
        }
            // view did load
            .onAppear {
                self.networkManager.fetchData()
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone XR"))
    }
}
