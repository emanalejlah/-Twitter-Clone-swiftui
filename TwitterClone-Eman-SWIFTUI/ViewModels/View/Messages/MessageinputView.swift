//
//  MessageinputView.swift
//  TwitterClone-Eman-SWIFTUI
//
//  Created by eman alejilah on 04/10/1444 AH.
//

import SwiftUI

struct MessageinputView: View {
    @Binding var messageText: String
    var body: some View {
        HStack{
            TextField("message" , text: $messageText)
                .textFieldStyle(PlainTextFieldStyle())
                .frame(minWidth: 30)
            
            Button(action: {}, label: {
                Text("Send")
            })
        }
    }
}

struct MessageinputView_Previews: PreviewProvider {
    static var previews: some View {
        MessageinputView(messageText: .constant("message.."))
    }
}
