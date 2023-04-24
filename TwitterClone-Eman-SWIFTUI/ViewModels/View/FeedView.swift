//
//  FeedView.swift
//  TwitterClone-Eman-SWIFTUI
//
//  Created by eman alejilah on 03/10/1444 AH.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ScrollView{
                VStack{
                    ForEach(0..<9){ _ in
                        TweetCell()
//                        Text("Tweet cell")
                    }
                }.padding()
            }
            
            Button(action: {}, label:{
                Image("tweet")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 32 , height: 32)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
//            .cornerRadius(16)
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
