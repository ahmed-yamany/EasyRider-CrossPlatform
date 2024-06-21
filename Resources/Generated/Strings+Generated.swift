// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  /// and
  internal static var and: String { return L10n.tr("Localizable", "and", fallback: "and") }
  /// Email
  internal static var email: String { return L10n.tr("Localizable", "email", fallback: "Email") }
  /// Gender
  internal static var gender: String { return L10n.tr("Localizable", "gender", fallback: "Gender") }
  /// Already have an account?
  internal static var haveAccount: String { return L10n.tr("Localizable", "haveAccount", fallback: "Already have an account?") }
  /// Name
  internal static var name: String { return L10n.tr("Localizable", "name", fallback: "Name") }
  /// OR
  internal static var or: String { return L10n.tr("Localizable", "or", fallback: "OR") }
  /// privacy
  internal static var privacy: String { return L10n.tr("Localizable", "privacy", fallback: "privacy") }
  /// Privacy policy
  internal static var privacyPolicy: String { return L10n.tr("Localizable", "privacyPolicy", fallback: "Privacy policy") }
  /// Sign In
  internal static var signin: String { return L10n.tr("Localizable", "signin", fallback: "Sign In") }
  /// Sign Up
  internal static var signup: String { return L10n.tr("Localizable", "signup", fallback: "Sign Up") }
  /// Localizable.strings
  ///   EasyRider-CrossPlatform
  /// 
  ///   Created by Ahmed Yamany on 12/06/2024.
  internal static var skip: String { return L10n.tr("Localizable", "skip", fallback: "Skip") }
  /// terms
  internal static var terms: String { return L10n.tr("Localizable", "terms", fallback: "terms") }
  /// By signing up. you agree to the 
  internal static var termsAndCondition: String { return L10n.tr("Localizable", "termsAndCondition", fallback: "By signing up. you agree to the ") }
  /// Terms of service
  internal static var termsOfService: String { return L10n.tr("Localizable", "termsOfService", fallback: "Terms of service") }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = localized(forKey:table:fallbackValue:)(key, table, value)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}
