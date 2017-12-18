//
//  ExperienceManager.swift
//  tellomee
//
//  Created by Michael Miller on 11/11/17.
//  Copyright © 2017 Michael Miller. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth

class ExperienceManager: NSObject {
    static let databaseRef = Database.database().reference()
    
    static var experiences = [Experience]()
    
    static func fillExperiences(completion: @escaping () -> Void) {
        experiences = [Experience]()
        
        databaseRef.child("experiences").queryOrdered(byChild: "city").queryEqual(toValue: FirebaseManager.user?.city).observe(.childAdded, with: {
            snap in
            
            let result = snap.value as! [String:AnyObject]
            
            FirebaseManager.getUser(uid: result["uid"] as! String) { (curator) in
            
                let experience = Experience(
                    id: snap.key,
                    title: result["title"] as! String,
                    category: result["category"] as! String,
                    city: result["city"] as! String,
                    includes: result["includes"] as! String,
                    price: Double(result["price"]! as! Double),
                    description: result["description"] as! String,
                    imageUrls: result["images"] as! [String],
                    curator: curator)
                
                experiences.append(experience)
                completion()
            }
            
        })
    }
}

