//
//  Settings.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 14/06/2024.
//

import SwiftUI

public protocol SettingsProtocol: ObservableObject {
    var language: Language { get set }
}

public class Settings: SettingsProtocol {
    @ObservedObject static public var shared = Settings()
    
    private let useCase: SettingsUseCaseProtocol = SettingsUseCase()
    
    private init() {
        language = useCase.getLanguage()
    }

    @Published public var language: Language = .en {
        didSet {
            useCase.updateLanguage(with: language)
        }
    }
    
}
