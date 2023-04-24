//
//  ContentView.swift
//  TwitterClone-Eman-SWIFTUI
//
//  Created by eman alejilah on 03/10/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       NavigationView{
           
           
           TabView{
               FeedView()
//               Text("Feed")
                   .tabItem{
                       Image(systemName: "house")
                       Text("Home")
                   }
               SearchView()
//               Text("Search")
                   .tabItem{
                       Image(systemName: "magnifyingglass")
                       Text("Search")
                   }
               ConversationsView()
//               Text("Messege")
                   .tabItem{
                       Image(systemName: "envelope")
                       Text("Messege")
                   }
           }
           .navigationBarTitle("Home")
           .navigationBarTitleDisplayMode(.inline)
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
