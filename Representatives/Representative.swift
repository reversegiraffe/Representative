//
//  Representative.swift
//  Representatives
//
//  Created by Kaytee on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Representative {
    
    private let kNameKey = "name"
    private let kPartyKey = "party"
    private let kStateKey = "state"
    private let kDistrictKey = "district"
    private let kPhoneKey = "phone"
    private let kOfficeKey = "office"
    private let kLinkKey = "link"
    
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