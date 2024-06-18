//
//  File.swift
//  
//
//  Created by Ahmed Yamany on 18/06/2024.
//

import SwiftUI

public extension View {
    @ViewBuilder
    func environmentSettings(_ settings: any SettingsProtocol) -> some View {
        environment(\.locale, settings.language.local)
        .environment(\.layoutDirection, settings.language.layoutDirection)
        .environment(\.language, settings.language)
        .environment(\.settings, settings)
        .id(settings.language)
    }
}
