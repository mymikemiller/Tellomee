//
//  Constants.swift
//  tellomee
//
//  Created by Michael Miller on 12/8/17.
//  Copyright © 2017 Michael Miller. All rights reserved.
//

import UIKit

// Constants that don't depend on the target. See Config.swift for config settings varying per target.
class Constants: NSObject {
    
    // If true, the user will automatically be logged in based on what's hardcoded in the input fields.
    static var autoLogin = true
    
    static let stripeApiVersion =  "2018-02-06"
    
    static let stripeClientId = "ca_AbsKVVP7BmIJFntfSkToXhxtLSAvbIUM"
    
    static let numGuests = ["1",
                            "2",
                            "3",
                            "4",
                            "5",
                            "6",
                            "7",
                            "8"]
    
    static let cities = ["San Francisco",
                  "Seattle",
                  "Salt Lake City"]
    
    static let categories = ["Adventure",
                         "Lifestyle",
                         "Cullinary"]

}