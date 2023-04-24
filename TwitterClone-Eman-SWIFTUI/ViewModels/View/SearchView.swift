//
//  SearchView.swift
//  TwitterClone-Eman-SWIFTUI
//
//  Created by eman alejilah on 03/10/1444 AH.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    var body: some View {
        ScrollView{
            SearchBar(text: $searchText)
                .padding()
            VStack(alignment: .leading){
                ForEach(0..<10){_ in
                    HStack {Spacer()}
                   UserCell()
                    
                }
            }.padding(.leading)
            
        }
//        .navigationBarTitle("Seaech")
//        .navigationBarTitleDisplayMode(.inline)
//        
        
    }
    
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
