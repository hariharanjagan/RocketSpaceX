//
//  Data+Extensions.swift
//  RocketSpaceXUITests
//
//  Created by Hariharan on 28/02/23.
//

import Foundation
import XCTest

extension Data {
    public static func fromJSON(fileName: String) throws -> Data {
        let bundle = Bundle(for: TestBundleClass.self)
        let url = try XCTUnwrap(bundle.url(forResource: fileName, withExtension: "json"))
        return try Data(contentsOf: url)
    }
}

private class TestBundleClass { }
