//
//  Block.swift
//  DecoderBitcoinWallet
//
//  Created by Neel Patel on 12/03/20.
//  Copyright © 2020 BeekayIT. All rights reserved.
//

import UIKit

class Block {
    // Enter the logic for the Block here
    
    var hash: String!
    var data: String!
    var previousHash: String!
    var index: Int!
    
    func generateHash() -> String {
        return NSUUID().uuidString.replacingOccurrences(of: "-", with: "")
    }
    
}
