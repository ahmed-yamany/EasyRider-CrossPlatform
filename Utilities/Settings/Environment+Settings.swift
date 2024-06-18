//
//  Environment+Settings.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 18/06/2024.
//

import SwiftUI

struct SettingsEnvironmentKey: EnvironmentKey {
    static var defaultValue: any SettingsProtocol = Settings.shared
}

extension EnvironmentValues {
    var settings: any SettingsProtocol {
        get { self[SettingsEnvironmentKey.self] }
        set { self[SettingsEnvironmentKey.self] = newValue }
    }
}
