//
//  ChatBubble.swift
//  TwitterClone-Eman-SWIFTUI
//
//  Created by eman alejilah on 06/10/1444 AH.
//

import SwiftUI

struct ChatBubble: Shape {
    var isFromCurrentUser: Bool
//    Coustom path for chat bubble
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight , isFromCurrentUser ? .bottomLeft: .bottomRight], cornerRadii: CGSize(width: 16, height: 16))
        
        return Path(path.cgPath)
        
    }
    
    
}

struct ChatBubble_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubble(isFromCurrentUser: false)
    }
}
