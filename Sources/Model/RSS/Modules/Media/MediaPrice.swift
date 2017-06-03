//
//  MediaPrice.swift
//
//  Copyright (c) 2017 Nuno Manuel Dias
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import Foundation

open class MediaPrice {
    
    /**
     
     The element's attributes
     
     */
    open class Attributes {
        
        /**
         
         Valid values are "rent", "purchase", "package" or "subscription". If 
         nothing is specified, then the media is free.
         
         */
        open var type: String?
        
        /**
         
         The price of the media object. This is an optional attribute.
         
         */
        open var price: Double?
        
        /**
         
         If the type is "package" or "subscription", then info is a URL pointing
         to package or subscription information. This is an optional attribute.
         
         */
        open var info: String?
        
        /**
         
         Use [ISO 4217] for currency codes. This is an optional attribute.
         
         */
        open var currency: String?
        
    }
    
    /**
     
     The element's attributes
     
     */
    open var attributes: Attributes?
    
    /**
     
     The element's value
     
     */
    open var value: String?
    
}

// MARK: - Initializers

extension MediaPrice {
    
    convenience init(attributes attributeDict: [String : String]) {
        self.init()
        self.attributes = MediaPrice.Attributes(attributes: attributeDict)
    }
    
}


extension MediaPrice.Attributes {
    
    convenience init?(attributes attributeDict: [String : String]) {
        
        if attributeDict.isEmpty {
            return nil
        }
        
        self.init()
        
        self.type = attributeDict["algo"]
        self.price = Double(attributeDict["algo"] ?? "")
        self.info = attributeDict["algo"]
        self.currency = attributeDict["algo"]
        
    }
    
}