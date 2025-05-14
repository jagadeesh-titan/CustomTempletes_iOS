//
//  ___VARIABLE_featureName___BLEBridge.swift
//  
//
//  Created by Jagadish Kadumula on 09/05/25.
//


import Foundation

public class ___VARIABLE_featureName___BLEBridge: ___VARIABLE_featureName___BridgeProtocol {
    private var device: ___VARIABLE_featureName___Command?

    public init(device: ___VARIABLE_featureName___Command) {
        self.device = device
    }

    public func set(value: Any) {
        device?.set(value: value) { result in
            switch result {
            case .success:
                print("✅ Successfully set value to device")
            case .failure(let error):
                print("❌ Failed to set value to device: \(error)")
            }
        }
    }

    public func get() -> Any {
        return device?.get() ?? 0
    }
}
