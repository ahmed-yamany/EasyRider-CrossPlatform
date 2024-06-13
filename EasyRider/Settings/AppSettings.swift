//
//  AppSettings.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 14/06/2024.
//

import SwiftUI
import FoundationExtensions

protocol AppSettingsProtocol: ObservableObject {
    var language: Language { get set }
}


class AppSettings: AppSettingsProtocol  {
    @ObservedObject static var shared = AppSettings()
    
    private init() {
        language = Language(rawValue: savedLanguage ?? Language.en.rawValue) ?? .en
    }

    @UserDefault(key: \.language) private var savedLanguage: String?
    
    @Published var language: Language = .en {
        didSet {
            savedLanguage = language.rawValue
        }
    }
    
}
