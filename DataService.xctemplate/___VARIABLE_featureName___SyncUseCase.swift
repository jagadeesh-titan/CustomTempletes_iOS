//
//  ___VARIABLE_featureName___SyncProtocol.swift
//  
//
//  Created by Jagadish Kadumula on 09/05/25.
//

import Foundation
import Domain

public class Sync___VARIABLE_featureName___UseCase: ___VARIABLE_featureName___SyncUseCaseProtocol {
    private let cloudRepository: ___VARIABLE_featureName___RemoteRepositoryProtocol
    private let localRepository: ___VARIABLE_featureName___LocalRepositoryProtocol
    private let syncManager: ___VARIABLE_featureName___SyncProtocol

    public init(
        cloudRepository: ___VARIABLE_featureName___RemoteRepositoryProtocol,
        localRepository: ___VARIABLE_featureName___LocalRepositoryProtocol,
        syncManager: ___VARIABLE_featureName___SyncProtocol
    ) {
        self.cloudRepository = cloudRepository
        self.localRepository = localRepository
        self.syncManager = syncManager
    }

    // Cloud -> App -> DB -> Device
    public func syncFromCloudToDevice() async throws {
        let value = try await cloudRepository.fetchFromCloud()
        localRepository.save(value)
        syncManager.setToDevice(value: value)
    }

    // Device -> App -> DB -> Cloud
    public func syncFromDeviceToCloud() async throws {
        let value = syncManager.getFromDevice()
        localRepository.save(value)
        try await cloudRepository.saveToCloud(value: value)
    }
}
