//
//  SignupView.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 21/06/2024.
//

import SwiftUI
import Settings

enum Gender: CaseIterable, CustomStringConvertible {
    case male, female
    
    var description: String {
        switch self {
            case .male:
                return "Male"
            case .female:
                return "Female"
        }
    }
}

struct SignupView<ViewModel: SignupViewModelProtocol, Coordinator: SignupCoordinatorProtocol>: View {
    @ObservedObject var viewModel: ViewModel
    let coordinator: Coordinator
        
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                headerView
                
                VStack(spacing: 20) {
                    ERTextField(placeholder: L10n.name, text: $viewModel.name)
                    ERTextField(placeholder: L10n.email, text: $viewModel.email)
                    
                    DropDownTextField(items: Gender.allCases, text: $viewModel.gender, placeholder: L10n.gender)
                }
                
                VStack(spacing: 16) {
                    TermsAndCondition(
                        privacyAction: coordinator.navigateToPrivacy,
                        termsAction: coordinator.navigateToTerms
                    )
                    
                    Button {

                    } label: {
                        Text(L10n.signup)
                    }
                    .buttonStyle(.primary)
                    
                    ORDivider()
                }
                
                HStack(spacing: 16) {
                    gmailButton
                    facebookButton
                    appleButton
                }
                
                HStack {
                    Text(L10n.haveAccount)
                        .foregroundColor(.gray)
                    
                    signinButton
                }
            }
            .padding(.horizontal, .constants.padding)
        }
    }
    
    private var headerView: some View {
        Text(L10n.signup)
            .font(FontFamily.Poppins.medium.swiftUIFont(size: 24))
            .padding(.bottom, 16)
            .padding(.leading, 20)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var gmailButton: some View {
        Button {
            
        } label: {
            Asset.Assets.gmail.swiftUIImage
                .resizable()
        }
        .buttonStyle(.socialMedia)
    }
    
    private var facebookButton: some View {
        Button {
            
        } label: {
            Asset.Assets.facebook.swiftUIImage
                .resizable()
        }
        .buttonStyle(.socialMedia)
    }
    
    private var appleButton: some View {
        Button {
            
        } label: {
            Image(systemName: "apple.logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(6)
                .foregroundStyle(Asset.Colors.erBackground.swiftUIColor)
                .background(.black)
                .mask {
                    Circle()
                }
        }
        .buttonStyle(.socialMedia)
    }
    
    private var signinButton: some View {
        Button(L10n.signin) {
            coordinator.navigateToSignIn()
        }
        .foregroundColor(.yellow)
        .font(FontFamily.Poppins.medium.swiftUIFont(size: 16))
    }
}

private struct ORDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 1)
            .overlay {
                Text(L10n.or)
                    .padding(.horizontal, 4)
                    .background(Asset.Colors.erBackground.swiftUIColor)
            }
            .foregroundStyle(Asset.Colors.erContentDisabled.swiftUIColor)
            .font(FontFamily.Poppins.medium.swiftUIFont(size: 12))
    }
}
