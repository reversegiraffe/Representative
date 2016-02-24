//
//  RepresentativeController.swift
//  Representatives
//
//  Created by Kaytee on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class RepresentativeController {
    
    static let kBaseURLString = "http://whoismyrepresentative.com"
    
    static func getRepsWithState(state: String, completion: (representatives: [Representative]) -> Void) {
        
        let url = NSURL(string: kBaseURLString + "/getall_reps_bystate.php?state=\(state)&output=json")!
        
        NetworkController.dataAtURL(url) { (data) -> Void in
            guard let representativeData = data else {
                print("Error in \(__FUNCTION__)")
                completion(representatives: [])
                return
            }
            
            do {
                
                let resultsDictionary = try NSJSONSerialization.JSONObjectWithData(representativeData, options: NSJSONReadingOptions.AllowFragments) as! [String: AnyObject]
                
                let representativeDictionaries = resultsDictionary[Representative.kResultsKey] as! [[String: String]]
                
                var arrayOfRepresentatives: [Representative] = []
                
                for dictionary in representativeDictionaries {
                    
                    let rep = Representative(jsonDictionary: dictionary)
                    arrayOfRepresentatives.append(rep)
                }
                
                completion(representatives: arrayOfRepresentatives)
                
            } catch {
                print("Error serializing JSON")
                completion(representatives: [])
                return
            }
            
            
            
        }
        
        
    }
    
    
}