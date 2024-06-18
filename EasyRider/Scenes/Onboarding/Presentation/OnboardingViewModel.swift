//
//  OnboardingViewModel.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 18/06/2024.
//

import SwiftUI
import Factory

@MainActor
protocol OnboardingViewModelProtocol: ObservableObject {
    var text: String { get set }
}

@MainActor
final class OnboardingViewModel: OnboardingViewModelProtocol {
    @Published var text: String = "Hello"
    
    private var useCase: OnboardingUseCaseProtocol
    init(useCase: OnboardingUseCaseProtocol) {
        self.useCase = useCase
    }
    
}
