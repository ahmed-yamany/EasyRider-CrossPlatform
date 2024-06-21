//
//  File.swift
//  
//
//  Created by Ahmed Yamany on 18/06/2024.
//

import SwiftUI

public extension View {
    @ViewBuilder
    func environmentSettings(_ settings: any SettingsProtocol, proxy: GeometryProxy) -> some View {
        environment(\.locale, settings.language.local)
        .environment(\.layoutDirection, settings.language.layoutDirection)
        .environment(\.language, settings.language)
        .environment(\.settings, settings)
        .onAppear {
            settings.screenWidth = proxy.size
            settings.safeAreaInsets = proxy.safeAreaInsets
        }
        .id(settings.language)
    }
}
