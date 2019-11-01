//
//  NoteBaseModel.swift
//  XMLParsingDemo
//
//  Created by Shantaram K on 25/10/19.
//

import UIKit

struct Note: Codable {
    var to: String?
    var from: String?
    var heading: String?
    var body: String?
    var status: UserStatus?
    
    enum CodingKeys: String, CodingKey {
        case to
        case from
        case heading = "today_heading"
        case body
        case status
    }
    
    init(from decoder: Decoder) throws {
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        to = try values.decodeIfPresent(String.self, forKey: .to)
        from = try values.decodeIfPresent(String.self, forKey: .from)
        heading = try values.decodeIfPresent(String.self, forKey: .heading)
        body = try values.decodeIfPresent(String.self, forKey: .body)
        do {
             status  = try values.decodeIfPresent(UserStatus.self, forKey: .status) ?? .unknown
        } catch {
            status = .unknown
        }
    }
}

enum UserStatus: String, CaseIterable, Codable {
    case walking = "walking"
    case driving = "driving"
    case watching = "watching"
    case unknown

    var name: String {
        switch self {
        case .walking:
            return "Walking"
        case .driving:
             return "Driving"
        case .watching:
            return "Watching"
        case .unknown:
            return "idel"
        }
    }
}
