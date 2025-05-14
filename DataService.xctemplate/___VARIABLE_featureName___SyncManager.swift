//
//  ___VARIABLE_featureName___SyncManager.swift
//  
//
//  Created by Jagadish Kadumula on 09/05/25.
//

import Foundation
import Domain
import DeviceBridge

public class ___VARIABLE_featureName___SyncManager: ___VARIABLE_featureName___SyncProtocol {
    private let bridge: ___VARIABLE_featureName___BridgeProtocol

    public init(bridge: ___VARIABLE_featureName___BridgeProtocol) {
        self.bridge = bridge
    }

    public func setToDevice(value: Any) {
        bridge.set(value: value)
    }

    public func getFromDevice() -> Any {
        return bridge.get()
    }
}
