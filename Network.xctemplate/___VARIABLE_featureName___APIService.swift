//
//  ___VARIABLE_featureName___APIService.swift
//  
//
//  Created by Jagadish Kadumula on 09/05/25.
//


import Foundation

public class ___VARIABLE_featureName___APIService: ___VARIABLE_featureName___APIServiceProtocol {
    public init() {}

    public func fetch() async throws -> Any {
        // Replace with actual network call
        return 8000  // Dummy Int
    }

    public func save(value: Any) async throws {
        // Convert to required format and send to backend
        if let goal = value as? Int {
            print("📡 Saving to server: \(goal)")
            // Hit API endpoint here
        }
    }
}
