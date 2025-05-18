//
//  File.swift
//  DataService
//
//  Created by Jagadish Kadumula on 17/05/25.
//

import Foundation
import Domain

public class Fetch___VARIABLE_featureName___UseCase: Fetch___VARIABLE_featureName___UseCaseProtocol {
    private let cloudRepository: Remote___VARIABLE_featureName___RepositoryProtocol
    private let localDatabase: Local___VARIABLE_featureName___RepositoryProtocol
    public init(cloudRepository: Remote___VARIABLE_featureName___RepositoryProtocol, localDatabase: Local___VARIABLE_featureName___RepositoryProtocol) {
        self.cloudRepository = cloudRepository
        self.localDatabase = localDatabase
    }
    
    
    public func fetch___VARIABLE_featureName___() async throws -> Int {
        if let localGoal = try await localDatabase.fetchGoal() {
            return localGoal
        } else {
            let goalFromCloud = try await cloudRepository.fetchGoalFromCloud()
            try await localDatabase.saveGoal(goalFromCloud)
            return goalFromCloud
        }
    }

    
}
