//
//  OnboardingUseCase.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 18/06/2024.
//

import Foundation
import Settings

protocol OnboardingUseCaseProtocol {
    func getTabViewModels() async throws -> [OnboardingTabviewModel]
}

final class OnboardingUseCase: OnboardingUseCaseProtocol {
    func getTabViewModels() async throws -> [OnboardingTabviewModel] {
        // swiftlint: disable all
        if await Settings.shared.language == .en {
            [
                .init(title: "Anywhere you are", description: "Sell houses easily with the help of Listenoryx and to make this line big I am writing more.", imageUrl: "onboarding1"),
                .init(title: "At anytime", description: "Sell houses easily with the help of Listenoryx and to make this line big I am writing more.", imageUrl: "onboarding2"),
                .init(title: "Book your car", description: "Sell houses easily with the help of Listenoryx and to make this line big I am writing more.", imageUrl: "onboarding3")
            ]
        } else {
            [
                .init(title: "في أي مكان أنت", description: "يمكنك بيع المنازل بسهولة بمساعدة Listenoryx ولجعل هذا الخط كبيرًا فأنا أكتب المزيد.", imageUrl: "onboarding1"),
                .init(title: "في أي وقت", description: "يمكنك بيع المنازل بسهولة بمساعدة Listenoryx ولجعل هذا الخط كبيرًا فأنا أكتب المزيد.", imageUrl: "onboarding2"),
                .init(title: "احجز سيارتك", description: "يمكنك بيع المنازل بسهولة بمساعدة Listenoryx ولجعل هذا الخط كبيرًا فأنا أكتب المزيد.", imageUrl: "onboarding3")
            ]
        }
        // swiftlint: enable all
    }
}
