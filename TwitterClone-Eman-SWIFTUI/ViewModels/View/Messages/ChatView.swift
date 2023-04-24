//
//  ChatView.swift
//  TwitterClone-Eman-SWIFTUI
//
//  Created by eman alejilah on 04/10/1444 AH.
//

import SwiftUI

struct ChatView: View {
    @State var messagesText: String = ""
    var body: some View {
        VStack{
            ScrollView{
                VStack(alignment: .leading, spacing: 12){
                    ForEach(0..<15){_ in
                        Text("Chat bubble")
                        
                    }
                }
            }
            MessageinputView(messageText: $messagesText)
                .padding()
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
