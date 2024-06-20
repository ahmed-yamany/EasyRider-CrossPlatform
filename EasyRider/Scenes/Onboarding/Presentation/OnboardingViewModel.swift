//
//  OnboardingViewModel.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 18/06/2024.
//

import SwiftUI
import Settings

@MainActor
protocol OnboardingViewModelProtocol: ObservableObject {
    var currentTabViewIndex: Int { get set }
    var tabViewModels: [OnboardingTabviewModel] { get set }
    var progressBarValue: CGFloat { get }
    
    func onAppear()
    func nextButtonTapped(onEnd: () -> Void)
}

@MainActor
final class OnboardingViewModel: OnboardingViewModelProtocol {
    @Published var currentTabViewIndex: Int = 0
    @Published var tabViewModels: [OnboardingTabviewModel] = []
    var progressBarValue: CGFloat {
        CGFloat(currentTabViewIndex + 1) / CGFloat(tabViewModels.count)
    }
    
    private var useCase: OnboardingUseCaseProtocol
    init(useCase: OnboardingUseCaseProtocol) {
        self.useCase = useCase
    }
    
    func onAppear() {
        loadTabViewModels()
    }
    func nextButtonTapped(onEnd: () -> Void) {
        if currentTabViewIndex < tabViewModels.count - 1 {
            currentTabViewIndex += 1
        } else {
//            onEnd()
            if Settings.shared.language == .en {
                Settings.shared.language = .ar
            } else {
                Settings.shared.language = .en
            }
        }
    }
}

private extension OnboardingViewModel {
    func loadTabViewModels() {
        Task {
            do {
                tabViewModels = try await useCase.getTabViewModels()
            } catch {
                
            }
        }
    }
}
