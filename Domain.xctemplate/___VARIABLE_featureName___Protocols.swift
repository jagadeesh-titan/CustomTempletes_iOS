//
//  ___VARIABLE_featureName___SyncProtocol.swift
//  
//
//  Created by Jagadish Kadumula on 09/05/25.
//

import Foundation

public protocol ___VARIABLE_featureName___SyncUseCaseProtocol {
    func syncFromCloudToDevice() async throws
    func syncFromDeviceToCloud() async throws
}

public protocol ___VARIABLE_featureName___RemoteRepositoryProtocol {
    func fetchFromCloud() async throws -> Any
    func saveToCloud(value: Any) async throws
}

public protocol ___VARIABLE_featureName___LocalRepositoryProtocol {
    func save(_ value: Any)
    func fetch() -> Any
}

public protocol ___VARIABLE_featureName___SyncProtocol {
    func setToDevice(value: Any)
    func getFromDevice() -> Any
}

