//
//  ConversationsView.swift
//  TwitterClone-Eman-SWIFTUI
//
//  Created by eman alejilah on 04/10/1444 AH.
//

import SwiftUI

struct ConversationsView: View {
    @State var isShowingNewMessageView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ScrollView{
                VStack{
                    ForEach(0..<9){ _ in
                        NavigationLink(destination: ChatView() , label: {
                            ConversatiionCell()
                        })
                      
//                        Text("Tweet cell")
                    }
                }.padding()
//                    .padding()
            }
            
            Button(action: {self.isShowingNewMessageView.toggle()}, label:{
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32 , height: 32)
                    .padding()
                
                    
            })
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .sheet(isPresented: $isShowingNewMessageView, content:{
                SearchView()
                
            })
//            .cornerRadius(16)
        }
    }
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}
