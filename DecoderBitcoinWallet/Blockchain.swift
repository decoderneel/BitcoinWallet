//
//  Blockchain.swift
//  DecoderBitcoinWallet
//
//  Created by Neel Patel on 12/03/20.
//  Copyright © 2020 BeekayIT. All rights reserved.
//

import UIKit

class Blockchain {
    // Enter the logic for the Blockchain here
    
    var chain = [Block]()
    
    func createGenesisBlock(data: String) {
        
        let genesisBlock = Block()
        genesisBlock.hash = genesisBlock.generateHash()
        genesisBlock.data = data
        genesisBlock.previousHash = "0000"
        genesisBlock.index = 0
        chain.append(genesisBlock)
        
    }
    
    func createBlock(data: String) {
        
        let newBlock = Block()
        newBlock.hash = newBlock.generateHash()
        newBlock.data = data
        newBlock.previousHash = chain[chain.count - 1].hash
        newBlock.index = chain.count
        chain.append(newBlock)
        
    }
    
}
