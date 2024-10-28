//
//  NetworkError.swift
//  API Example
//
//  Created by Jerry Joy on 2024-10-28.
//

import Foundation

enum NetworkError: Error {
    case badUrl
    case invalidRequest
    case badResponse
    case badStatus
    case failedToDecodeResponse
}
