//
//  ConversatiionCell.swift
//  TwitterClone-Eman-SWIFTUI
//
//  Created by eman alejilah on 04/10/1444 AH.
//

import SwiftUI

struct ConversatiionCell: View {
    var body: some View {
        VStack{
            HStack(spacing: 12){
                Image("venom-10")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56 , height: 56)
                    .cornerRadius(28)
                VStack(alignment: .leading, spacing: 4){
                    Text("batman")
                        .font(.system(size: 14 , weight: .semibold))
                    
                    Text("Longer messages text to see what happens when i do this")
                        .font(.system(size: 15 ))
                        .lineLimit(2)
                }
                .foregroundColor(.black)
                .padding(.trailing)
                
            }
            Divider()
        }
    }
}

struct ConversatiionCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversatiionCell()
    }
}
