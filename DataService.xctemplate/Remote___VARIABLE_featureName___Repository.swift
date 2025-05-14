//
//  Remote___VARIABLE_featureName___Repository.swift
//  
//
//  Created by Jagadish Kadumula on 09/05/25.
//

import Foundation
import Network
import Domain

public class Remote___VARIABLE_featureName___Repository: ___VARIABLE_featureName___RemoteRepositoryProtocol {
    private let apiService: ___VARIABLE_featureName___APIServiceProtocol

    public init(apiService: ___VARIABLE_featureName___APIServiceProtocol) {
        self.apiService = apiService
    }

    public func fetchFromCloud() async throws -> Any {
        return try await apiService.fetch()
    }

    public func saveToCloud(value: Any) async throws {
        try await apiService.save(value: value)
    }
}

