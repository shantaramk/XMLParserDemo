//
//  ViewController.swift
//  XMLParsingDemo
//
//  Created by Shantaram K on 25/10/19.
//

import UIKit
import XMLParsing

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        performParsing()
        performAdaniGroupAPIParsing()
    }
    
    func performParsing() {
        let xmlStr = XMLString().xmlStr
        let data: Data = xmlStr.data(using: .utf8)!
        let decoder = XMLDecoder()
        let book: Note?
        do {
            book = try decoder.decode(Note.self, from: data)
            print(book?.body ?? "")
        } catch {
            print(error)
            
            book = nil
        }
    }
    
    
    func performAdaniGroupAPIParsing() {
        
        //MARK: - STEP: 1 COPY API reponse xml string
        
        //MARK: - STEP: 2 Conver the xml to json using below website
        //https://www.freeformatter.com/xml-to-json-converter.html
        
        //MARK: - STEP: 3 Copy the json,  convert the json to Codeable form usign below website
        //http://www.json4swift.com/
        //Please the LoginConsumerBaseModel.swift file as output
        
        let xmlStr = XMLString().xmlStr2
        let data: Data = xmlStr.data(using: .utf16)!
        let decoder = XMLDecoder()
        let user: Json4Swift_Base?
        do {
            user = try decoder.decode(Json4Swift_Base.self, from: data)
            print(user?.body?.consumerApp_LoginConsumer?.lOGIN_PIN ?? "")
        } catch {
            print(error)
            
            user = nil
        }
        
    }
}


class XMLString {
    var xmlStr = """
<note>
<to>Bob</to>
<from>Jane</from>
<today_heading>Reminder</today_heading>
<body>Don't forget to use XMLParsing!</body>
<status>walking</status>
</note>
"""
    
    var xmlStr2 = """

<?xml version="1.0" encoding="utf-8"?>


<soap12:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://www.w3.org/2003/05/soap-envelope">


  <soap12:Header>


    <SOAPHeaderContent xmlns="http://tempuri.org/">


      <UserName>string</UserName>


      <Password>string</Password>


    </SOAPHeaderContent>


  </soap12:Header>


  <soap12:Body>


    <ConsumerApp_LoginConsumer xmlns="http://tempuri.org/">


      <CA_NUMBER>string</CA_NUMBER>


      <LOGIN_PIN>string</LOGIN_PIN>


      <IMEI>string</IMEI>


      <SIM>string</SIM>


      <UUID>string</UUID>


      <IP>string</IP>


      <MOBILENO>string</MOBILENO>


      <METERNO>string</METERNO>


      <TOKENNO>string</TOKENNO>


    </ConsumerApp_LoginConsumer>


  </soap12:Body>


</soap12:Envelope>

"""
}
