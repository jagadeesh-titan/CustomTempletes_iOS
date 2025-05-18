//
//  File.swift
//  DataService
//
//  Created by Jagadish Kadumula on 17/05/25.
//

import Foundation
import Domain

public class Update___VARIABLE_featureName___UseCase: Update___VARIABLE_featureName___UseCaseProtocol {
    private let bleManager: ___VARIABLE_featureName___WatchTransferProtocol
    private let localRepo: Local___VARIABLE_featureName___RepositoryProtocol
    private let cloudRepo: Remote___VARIABLE_featureName___RepositoryProtocol

    public init(bleManager: ___VARIABLE_featureName___WatchTransferProtocol,
                localRepo: Local___VARIABLE_featureName___RepositoryProtocol,
                cloudRepo: Remote___VARIABLE_featureName___RepositoryProtocol) {
        self.bleManager = bleManager
        self.localRepo = localRepo
        self.cloudRepo = cloudRepo
    }

    public func update___VARIABLE_featureName___(_ goal: Int) async throws {
        
        try await bleManager.setGoalToDevice(value: goal)
        try await localRepo.saveGoal(goal)
        try await cloudRepo.updateGoalToCloud(value: goal)
    }
}
