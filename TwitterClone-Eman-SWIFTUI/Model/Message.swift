//
//  Message.swift
//  TwitterClone-Eman-SWIFTUI
//
//  Created by eman alejilah on 06/10/1444 AH.
//

import Foundation

struct MockMessage: Identifiable {
    let id: Int
    let imageName : String
    let messageText: String
    let isCurrentUser: Bool
}

let MOCK_MESSAGES:[MockMessage] = [
    .init(id: 0, imageName: "spiderman", messageText: "Hey whatsUP", isCurrentUser: false),
    .init(id: 1, imageName: "batman", messageText: "Not much , you?", isCurrentUser: true),
    .init(id: 2, imageName: "batman", messageText: "Because i have some issues", isCurrentUser: true),
    .init(id: 3, imageName: "spiderman", messageText: "dont warry", isCurrentUser: false),
    .init(id: 4, imageName: "spiderman", messageText: "Hi help you", isCurrentUser: false),
    .init(id: 5, imageName: "batman", messageText: "Thanks", isCurrentUser: true),
   
]
