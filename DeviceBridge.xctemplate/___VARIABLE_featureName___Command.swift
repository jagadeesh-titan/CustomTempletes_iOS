//
//  ___VARIABLE_featureName___CloudRepository.swift
//  
//
//  Created by Jagadish Kadumula on 09/05/25.
//

import Foundation


public protocol ___VARIABLE_featureName___Command: AnyObject {
    func set(value: Any, completion: @escaping (Result<Bool, Error>) -> Void)
    func get() -> Any
}
