//
//  ERButton.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 21/06/2024.
//

import SwiftUI

struct ERButton: ButtonStyle {
    @Environment(\.isEnabled) var isEnabled: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(Asset.Colors.erBackground.swiftUIColor)
            .font(FontFamily.Poppins.bold.swiftUIFont(size: 16))
            .frame(height: 64)
            .frame(maxWidth: .infinity)
            .background(backgroundColor(configuration))
            .mask {
                RoundedRectangle(cornerRadius: 8)
            }
    }
    
    func backgroundColor(_ configuration: Configuration) -> Color {
        if configuration.isPressed || !isEnabled {
            return Asset.Colors.erContentDisabled.swiftUIColor
        }
        
        return Asset.Colors.erPrimary.swiftUIColor
    }
}

extension ButtonStyle where Self == ERButton {
    static var primary: Self { ERButton() }
}

#Preview {
    Button("Login") {
        
    }
    .buttonStyle(.primary)
}
