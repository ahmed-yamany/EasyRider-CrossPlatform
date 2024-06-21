//
//  SocialMediaButton.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 21/06/2024.
//

import SwiftUI

struct SocialMediaButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .aspectRatio(contentMode: .fit)
            .frame(width: 24, height: 24)
            .frame(width: 48, height: 48)
            .mask {
                RoundedRectangle(cornerRadius: 8)
            }
            .background {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1)
                    .fill(Asset.Colors.erContentSecondary.swiftUIColor.opacity(0.3))
            }
    }
}

extension ButtonStyle where Self == SocialMediaButtonStyle {
    static var socialMedia: Self {
        SocialMediaButtonStyle()
    }
}

#Preview {
    Button {
        
    } label: {
        Asset.Assets.gmail.swiftUIImage
            .resizable()
    }
    .buttonStyle(.socialMedia)
}
