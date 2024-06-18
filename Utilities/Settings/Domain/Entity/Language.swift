//
//  Language.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 14/06/2024.
//

import SwiftUI

public enum Language: String, CaseIterable, Hashable {
    // swiftlint: disable identifier_name
    case en
    case ar
    // swiftlint: enable identifier_name
    
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
    
    var path: String {
        // swiftlint: disable force_unwrapping
        Bundle.main.path(forResource: rawValue, ofType: "lproj")!
        // swiftlint: enable force_unwrapping
    }
    
    var bundle: Bundle {
        // swiftlint: disable force_unwrapping
        Bundle(path: path)!
        // swiftlint: enable force_unwrapping
    }
}
