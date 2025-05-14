//
//  Local___VARIABLE_featureName___Repository.swift
//  
//
//  Created by Jagadish Kadumula on 09/05/25.
//
import Foundation
import DataBase
import Domain

public class Local___VARIABLE_featureName___Repository: ___VARIABLE_featureName___LocalRepositoryProtocol {
    private let database: ___VARIABLE_featureName___PersistenceProtocol

    public init(database: ___VARIABLE_featureName___PersistenceProtocol) {
        self.database = database
    }

    public func save(_ value: Any) {
        database.save(value: value)
    }

    public func fetch() -> Any {
        return database.fetch()
    }
}
