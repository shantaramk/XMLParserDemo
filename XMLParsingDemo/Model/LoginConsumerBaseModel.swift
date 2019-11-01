import Foundation
/*
struct LoginConsumerBaseModel : Codable {
	let header : Header?
	let body : Body?

	enum CodingKeys: String, CodingKey {

		case header = "Header"
		case body = "Body"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		header = try values.decodeIfPresent(Header.self, forKey: .header)
		body = try values.decodeIfPresent(Body.self, forKey: .body)
	}

}

struct Header : Codable {
    let sOAPHeaderContent : SOAPHeaderContent?
    
    enum CodingKeys: String, CodingKey {
        
        case sOAPHeaderContent = "SOAPHeaderContent"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        sOAPHeaderContent = try values.decodeIfPresent(SOAPHeaderContent.self, forKey: .sOAPHeaderContent)
    }
    
}

struct ConsumerApp_LoginConsumer : Codable {
    let cA_NUMBER : String?
    let lOGIN_PIN : String?
    let iMEI : String?
    let sIM : String?
    let uUID : String?
    let iP : String?
    let mOBILENO : String?
    let mETERNO : String?
    let tOKENNO : String?
    
    enum CodingKeys: String, CodingKey {
        
        case cA_NUMBER = "CA_NUMBER"
        case lOGIN_PIN = "LOGIN_PIN"
        case iMEI = "IMEI"
        case sIM = "SIM"
        case uUID = "UUID"
        case iP = "IP"
        case mOBILENO = "MOBILENO"
        case mETERNO = "METERNO"
        case tOKENNO = "TOKENNO"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        cA_NUMBER = try values.decodeIfPresent(String.self, forKey: .cA_NUMBER)
        lOGIN_PIN = try values.decodeIfPresent(String.self, forKey: .lOGIN_PIN)
        iMEI = try values.decodeIfPresent(String.self, forKey: .iMEI)
        sIM = try values.decodeIfPresent(String.self, forKey: .sIM)
        uUID = try values.decodeIfPresent(String.self, forKey: .uUID)
        iP = try values.decodeIfPresent(String.self, forKey: .iP)
        mOBILENO = try values.decodeIfPresent(String.self, forKey: .mOBILENO)
        mETERNO = try values.decodeIfPresent(String.self, forKey: .mETERNO)
        tOKENNO = try values.decodeIfPresent(String.self, forKey: .tOKENNO)
    }
    
}

struct Body : Codable {
    let consumerApp_LoginConsumer : ConsumerApp_LoginConsumer?
    
    enum CodingKeys: String, CodingKey {
        
        case consumerApp_LoginConsumer = "ConsumerApp_LoginConsumer"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        consumerApp_LoginConsumer = try values.decodeIfPresent(ConsumerApp_LoginConsumer.self, forKey: .consumerApp_LoginConsumer)
    }
    
}

struct SOAPHeaderContent : Codable {
    let userName : String?
    let password : String?
    
    enum CodingKeys: String, CodingKey {
        
        case userName = "UserName"
        case password = "Password"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        userName = try values.decodeIfPresent(String.self, forKey: .userName)
        password = try values.decodeIfPresent(String.self, forKey: .password)
    }
    
}

*/
