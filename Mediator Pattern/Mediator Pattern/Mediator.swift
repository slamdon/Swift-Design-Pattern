//
//  Mediator.swift
//  Mediator Pattern
//
//  Created by Don on 2017/1/12.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation

protocol Peer {
    var name:String {get}
    func checkIsOtherCarsTooClose(position:Position) -> Bool
}

protocol Mediator {
    func registerPeer(peer:Peer)
    func unregisterPeer(peer:Peer)
    func changePosition(peer:Peer, pos:Position) -> Bool
}

class CarMediator: Mediator {
    private var peers:[String:Peer]
    
    init() {
        peers = [String:Peer]()
        
    }
    
    func registerPeer(peer: Peer) {
        self.peers[peer.name] = peer
    }
    
    func unregisterPeer(peer: Peer) {
        self.peers.removeValue(forKey: peer.name)
    }
    
    func changePosition(peer: Peer, pos: Position) -> Bool {
        for storedPeer in peers.values {
            if peer.name != storedPeer.name && storedPeer.checkIsOtherCarsTooClose(position: pos) {
                return true
            }
        }
        return false
    }
    
    
}
