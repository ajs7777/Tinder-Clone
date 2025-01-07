//
//  UserInfoView.swift
//  Tinder Clone
//
//  Created by Abhijit Saha on 07/01/25.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Megan")
                    .font(.title)
                    .fontWeight(.heavy)
                Text("37")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    print("DEBUG: Show Profile here")
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.semibold)
                        .imageScale(.large)
                }
                
                
            }
            Text("Actress | Witch")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding()
        .background(
            .linearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    UserInfoView()
}
