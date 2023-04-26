//
//  MessageView.swift
//  TwitterClone-Eman-SWIFTUI
//
//  Created by eman alejilah on 07/10/1444 AH.
//

import SwiftUI

struct MessageView: View {
    let message : MockMessage
    var body: some View {
        HStack{
            if message.isCurrentUser{
                Spacer()
                
                //                        Text("Chat bubble")
                Text(message.messageText)
                    .padding()
                    .background(Color.blue)
                //                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .clipShape(ChatBubble(isFromCurrentUser: true))
                    .foregroundColor(.white)
                    .padding(.horizontal)
            }else{
                HStack(alignment: .bottom){
                    Image(message.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40 , height: 40)
                        .clipShape(Circle())
                    
                    Text(message.messageText)
                        .padding()
                        .background(Color(.systemGray5))
                    
                        .clipShape(ChatBubble(isFromCurrentUser: false))
                        .foregroundColor(.black)
                    
                    
                    
                    
                }.padding(.horizontal)
                Spacer()
            }
            
        }
    }
}


struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: MOCK_MESSAGES[0])
    }
}
