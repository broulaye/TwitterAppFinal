//
//  TwitterClient.swift
//  Twitter
//
//  Created by macbookair11 on 2/15/16.
//  Copyright © 2016 Broulaye Doumbia. All rights reserved.
//

import UIKit
import BDBOAuth1Manager

let twitterConsumerKey = "vFUdlMV2QCgwooBNSnJh3q7bO";
let twitterConsumerSecret = "iPiiJBWpZzoEdOIHg7ljznK83DUwMWNauAa4v2UJV3E5WYoW2R";
let twitterBaseUrl = NSURL(string: "https://api.twitter.com")

class TwitterClient: BDBOAuth1SessionManager {
    
    class var sharedInstance: TwitterClient {
        struct Static {
            static let instance = TwitterClient(baseURL: twitterBaseUrl, consumerKey: twitterConsumerKey, consumerSecret: twitterConsumerSecret )
        
        }
        
        return Static.instance 
    
    }
    
}
