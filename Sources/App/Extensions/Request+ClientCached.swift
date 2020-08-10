//
//  Request+ClientCached.swift
//  
//
//  Created by Michael Critz on 8/8/20.
//

import Vapor

extension Request {
    /// Adds a Cache-Control policy
    /// - Parameter maxAge: Seconds before client revalidates request,
    /// default 1 hour (3,600 seconds)
    func clientCached(maxAge: UInt = 3_600) {
        self.headers.cacheControl = NIOHTTP1.HTTPHeaders.CacheControl(maxAge: Int(maxAge))
    }
}
