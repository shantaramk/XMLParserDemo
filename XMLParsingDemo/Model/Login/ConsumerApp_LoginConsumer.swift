/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
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