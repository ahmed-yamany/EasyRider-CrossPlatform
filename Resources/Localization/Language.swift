//
//  Language.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 14/06/2024.
//

import SwiftUI
import FoundationExtensions

extension UserDefaultsKeys {
    var language: String { "EasyRider_App_Language" }
}

enum Language: String, CaseIterable, Hashable {
    case en = "en"
    case ar = "ar"
    
    var layoutDirection: LayoutDirection {
        switch self {
            case .en:
                    .leftToRight
            case .ar:
                    .rightToLeft
        }
    }
    
    var local: Locale {
        Locale(identifier: self.rawValue)
    }
    
}
