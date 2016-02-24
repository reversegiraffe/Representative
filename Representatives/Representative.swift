//
//  Representative.swift
//  Representatives
//
//  Created by Kaytee on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Representative {
    
    static let kNameKey = "name"
    static let kPartyKey = "party"
    static let kStateKey = "state"
    static let kDistrictKey = "district"
    static let kPhoneKey = "phone"
    static let kOfficeKey = "office"
    static let kLinkKey = "link"
    static let kResultsKey = "results"
    
    let name: String?
    let party: String?
    let state: String?
    let district: String?
    let phone: String?
    let office: String?
    let link: String?
    
    init(jsonDictionary: [String: String]) {
        
        self.name = jsonDictionary[kNameKey]
        self.party = jsonDictionary[kPartyKey]
        self.state = jsonDictionary[kStateKey]
        self.district = jsonDictionary[kDistrictKey]
        self.phone = jsonDictionary[kPhoneKey]
        self.office = jsonDictionary[kOfficeKey]
        self.link = jsonDictionary[kLinkKey]
    }
    
    
}