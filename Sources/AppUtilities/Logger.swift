//
//  Logger.swift
//  AppUtilities
//
//  Created by Moheed Zafar on 24/09/2025.
//

import Foundation

public class Logger {
    public enum Level: String {
        case info = "ℹ️ INFO"
        case warning = "⚠️ WARNING"
        case error = "❌ ERROR"
    }
    
    public static func log(_ message: String, level: Level = .info, file: String = #file, line: Int = #line) {
        let filename = (file as NSString).lastPathComponent
        print("[\(level.rawValue)] \(filename):\(line) - \(message)")
    }
}
