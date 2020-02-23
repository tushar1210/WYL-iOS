//
//  Constants.swift
//  WYL
//
//  Created by Tushar Singh on 22/02/20.
//  Copyright © 2020 Tushar Singh. All rights reserved.
//

import Foundation

var base:String = "http://203.92.44.186/wyl.com/"
var userAuthtoken = "apiadmin"
var passwordAuthtoken = "wyl@123"
let credentialData = "\(userAuthtoken):\(passwordAuthtoken)".data(using: String.Encoding(rawValue: String.Encoding.utf8.rawValue))!
let base64Credentials = credentialData.base64EncodedString()

let headers = [
"Authorization": "Basic \(base64Credentials)"
]
