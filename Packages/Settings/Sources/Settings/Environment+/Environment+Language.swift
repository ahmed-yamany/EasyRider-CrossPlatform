//
//  Environment+Language.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 14/06/2024.
//

import SwiftUI

public struct EnvironmentLanguageKey: EnvironmentKey {
    public static var defaultValue: Language = .en
}

public extension EnvironmentValues {
    var language: Language {
        get { self[EnvironmentLanguageKey.self] }
        set { self[EnvironmentLanguageKey.self] = newValue }
    }
}
