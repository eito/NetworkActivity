//
//  NetworkActivity.swift
//
//  Created by Eric Ito on 10/21/14.
//  Copyright (c) 2014 Eric Ito. All rights reserved.
//

import Foundation

var NetworkActivityCount = 0
let serialQueue = dispatch_queue_create("com.networkactivity.queue", DISPATCH_QUEUE_SERIAL);

public class NetworkActivity {
    
    public class func start() {
        dispatch_async(serialQueue) {
            NetworkActivityCount += 1
            NetworkActivity.updateNetworkStatus()
        }
    }
    
    public class func stop() {
        dispatch_async(serialQueue) {
            NetworkActivityCount -= 1
            NetworkActivity.updateNetworkStatus()
        }
    }
    
    private class func updateNetworkStatus() {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = (NetworkActivityCount > 0)
    }
}
