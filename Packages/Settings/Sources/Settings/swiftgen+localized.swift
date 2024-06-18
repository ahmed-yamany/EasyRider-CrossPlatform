//  Created by Ahmed Yamany on 18/06/2024.
//

import Foundation

public func swiftgen_localized(forKey key: String, table: String, fallbackValue value: String) -> String {
    let bundle: Bundle = Settings.shared.language.bundle
    return bundle.localizedString(forKey: key, value: value, table: table)
}
