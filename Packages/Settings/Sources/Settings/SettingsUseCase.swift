//
//  SettingsUseCase.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 18/06/2024.
//

import Foundation
import FoundationExtensions

 public protocol SettingsUseCaseProtocol {
    func getLanguage() -> Language
    func updateLanguage(with language: Language)
}

public extension UserDefaultsKeys {
    var language: String { "EasyRider_App_Language" }
}

public final class SettingsUseCase: SettingsUseCaseProtocol {
    
    @UserDefault(key: \.language) private var language: String?

    public func getLanguage() -> Language {
        Language(rawValue: language ?? Language.en.rawValue) ?? .en
    }
    
    public func updateLanguage(with language: Language) {
        self.language = language.rawValue
    }
}
