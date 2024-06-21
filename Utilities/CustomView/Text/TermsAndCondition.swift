//
//  TermsAndCondition.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 21/06/2024.
//

import SwiftUI

struct TermsAndCondition: View {
    let privacyAction: () -> Void
    let termsAction: () -> Void
    
    var body: some View {
        Text("\(L10n.termsAndCondition) \(termsOfService) \(L10n.and) \(privacyPolicy)")
            .foregroundStyle(Asset.Colors.erContentDisabled.swiftUIColor)
            .font(FontFamily.Poppins.regular.swiftUIFont(size: 12))
            .environment(\.openURL, OpenURLAction(handler: { url in
                if url.absoluteString.contains(L10n.privacy) {
                    privacyAction()
                }
                
                if url.absoluteString.contains(L10n.privacy) {
                    termsAction()
                }
                
                return .discarded
            }))
            .multilineTextAlignment(.leading)
    }
    
    var termsOfService: AttributedString {
        var result = AttributedString(L10n.termsOfService)
        result.font = FontFamily.Poppins.bold.swiftUIFont(size: 12)
        result.foregroundColor = Asset.Colors.erPrimary.color
        result.link = URL(string: L10n.terms)
        return result
    }
    
    var privacyPolicy: AttributedString {
        var result = AttributedString(L10n.privacyPolicy)
        result.font = FontFamily.Poppins.bold.swiftUIFont(size: 12)
        result.foregroundColor = Asset.Colors.erPrimary.color
        result.link = URL(string: L10n.privacy)
        return result
    }
}

#Preview {
    TermsAndCondition(privacyAction: {}, termsAction: {})
}
