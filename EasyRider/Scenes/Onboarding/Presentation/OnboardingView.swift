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
            tabView
            Spacer()
            progressButton
        }
        .onAppear {
            viewModel.onAppear()
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                skipButton
            }
        }
        .animation(.easeIn(duration: 0.3), value: viewModel.currentTabViewIndex)
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
    
    private var tabView: some View {
        TabView(selection: $viewModel.currentTabViewIndex) {
            ForEach(viewModel.tabViewModels.indices, id: \.self) { index in
                let model = viewModel.tabViewModels[index]
                VStack(spacing: 44) {
                    Image(uiImage: model.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 220)
                    
                    VStack(spacing: 12) {
                        Text(model.title)
                            .multilineTextAlignment(.center)
                            .font(FontFamily.Poppins.semiBold.swiftUIFont(size: 24))
                        
                        Text(model.description)
                            .multilineTextAlignment(.center)
                            .font(FontFamily.Poppins.regular.swiftUIFont(size: 14))
                            .padding(.horizontal, 30)
                    }
                    .foregroundStyle(.erContentPrimary)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 14)
                .tag(index)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
    
    var progressButton: some View {
        ZStack {
            OnBoardingProgressBar(value: viewModel.progressBarValue)
                .foregroundStyle(.erPrimary)
                .frame(width: 80, height: 80)
            
            Button {
                viewModel.nextButtonTapped(onEnd: {
                    coordinator.navigateToAuthentication()
                })
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
    @Environment(\.layoutDirection) private var layoutDirection: LayoutDirection
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .opacity(0.3)
            .foregroundStyle(.erContentDisabled)
        
        Circle()
            .trim(from: 0, to: CGFloat(value))
            .stroke(style: StrokeStyle(lineWidth: 5.0, lineCap: .round, lineJoin: .round))
            .rotationEffect(Angle(degrees: layoutDirection == .rightToLeft ? 90 : 270))
    }
}

#Preview {
    OnboardingCoordinator(router: .init())
}
