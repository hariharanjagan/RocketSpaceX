//
//  MockDataRequest.swift
//  RocketSpaceXTests
//
//  Created by Hariharan on 28/02/23.
//

import Foundation
@testable import RocketSpaceX
import Alamofire

class MockDataRequest: DataRequestProtocol {
    static var statusCode: Int = 200
    static var data: Data?
    
    var dataResponse = AFDataResponse<Any>(
        request: nil,
        response: HTTPURLResponse(url: URL(string: "test.ykpoh.com")!, statusCode: MockDataRequest.statusCode, httpVersion: "1.1", headerFields: nil),
        data: MockDataRequest.data,
        metrics: nil,
        serializationDuration: TimeInterval(),
        result: Result.success(true)
    )
    
    func response(completionHandler: @escaping (AFDataResponse<Any>) -> Void) -> Self {
        completionHandler(dataResponse)
        return self
    }
    
    func responseJSON(completionHandler: @escaping (AFDataResponse<Any>) -> Void) -> Self {
        return response(completionHandler: completionHandler)
    }
}
