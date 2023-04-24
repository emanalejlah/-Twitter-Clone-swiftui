//
//  UserCell.swift
//  TwitterClone-Eman-SWIFTUI
//
//  Created by eman alejilah on 03/10/1444 AH.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
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
                
                Text("Eddie Broke")
                    .font(.system(size: 14 , weight: .semibold))
            }
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
