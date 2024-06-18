//
//  OnboardingView.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 18/06/2024.
//

import SwiftUI

struct OnboardingView<ViewModel: OnboardingViewModelProtocol, Coordinator: OnboardingCoordinatorProtocol>: View {
    let coordinator: Coordinator
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            onBoardingView
            Spacer()
            progressButton
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                skipButton
            }
        }
//        .animation(.easeIn(duration: 0.3), value: viewModel.currentStep)
    }
    
    var onBoardingView: some View {
        VStack {
//            tabView
        }
    }
    
    var skipButton: some View {
        Button {
            coordinator.navigateToAuthentication()
        } label: {
            Text(L10n.skip)
                .foregroundStyle(.erContentPrimary)
                .font(FontFamily.Poppins.regular.swiftUIFont(size: 16))
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        .padding(.horizontal, 16)
    }
    
//    private var tabView: some View {
//        TabView(selection: $viewModel.currentStep) {
//            ForEach(viewModel.models.indices, id: \.self) { index in
//                let model = viewModel.models[index]
//                VStack(spacing: 44 ) {
//                    Image(model.image)
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(height: 220)
//                    
//                    VStack(spacing: 12) {
//                        Text(model.title)
//                            .multilineTextAlignment(.center)
//                            .font(.custom(size: 24, weight: .regular))
//                        
//                        Text(model.descreption)
//                            .multilineTextAlignment(.center)
//                            .font(.custom(size: 14, weight: .regular))
//                            .padding(.horizontal, 30)
//                    }
//                    .foregroundStyle(.erContentPrimary)
//                }
//                .frame(maxWidth: .infinity)
//                .padding(.horizontal, .constants.padding)
//                .tag(index)
//            }
//        }
//        .tabViewStyle(.page(indexDisplayMode: .never))
//    }
    
    var progressButton: some View {
        ZStack {
            OnBoardingProgressBar(value: 0.3)
                .foregroundStyle(.erPrimary)
                .frame(width: 80, height: 80)
            
            Button {
                
            } label: {
                Image(systemName: "arrow.right")
                    .font(.system(size: 18).bold())
                    .frame(width: 65, height: 65)
                    .background(.erPrimary)
                    .foregroundStyle(.erContentPrimary)
                    .clipShape(Circle())
            }
        }
        .padding(.bottom, 50)
    }
}

struct OnBoardingProgressBar: View {
    let value: CGFloat
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .opacity(0.3)
            .foregroundStyle(.erContentDisabled)
        
        Circle()
            .trim(from: 0, to: CGFloat(value))
            .stroke(style: StrokeStyle(lineWidth: 5.0, lineCap: .round, lineJoin: .round))
            .rotationEffect(Angle(degrees: 270))
    }
}

#Preview {
    NavigationStack {
        OnboardingCoordinator()
    }
}
