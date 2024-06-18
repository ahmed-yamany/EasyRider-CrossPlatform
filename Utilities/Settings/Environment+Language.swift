//
//  Environment+Language.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 14/06/2024.
//

import SwiftUI

struct EnvironmentLanguageKey: EnvironmentKey {
    static var defaultValue: Language = .en
}

extension EnvironmentValues {
    var language: Language {
        get { self[EnvironmentLanguageKey.self] }
        set { self[EnvironmentLanguageKey.self] = newValue }
    }
}
