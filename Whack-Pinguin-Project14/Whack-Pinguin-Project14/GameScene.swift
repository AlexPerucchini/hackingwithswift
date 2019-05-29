//
//  GameScene.swift
//  Whack-Pinguin-Project14
//
//  Created by Alex Perucchini on 5/29/19.
//  Copyright © 2019 Alex Perucchini. All rights reserved.
//

import SpriteKit
import GameplayKit


class GameScene: SKScene {
 
    var gameScore: SKLabelNode!
    var slots = [WhackSlot]()
    var score = 0 {
        didSet {
            gameScore.text = "Score: \(score)"
        }
    }

    override func didMove(to view: SKView) {
        
        let background = SKSpriteNode(imageNamed: "whackBackground") 
        background.position = CGPoint(x: 512, y: 384)
        background.blendMode = .replace
        background.zPosition = -1
        addChild(background)
        
        gameScore = SKLabelNode(fontNamed: "Chalkduster")
        gameScore.text = "Score: 0"
        gameScore.position = CGPoint(x: 10, y: 10)
        gameScore.horizontalAlignmentMode = .left
        gameScore.fontSize = 48
        addChild(gameScore)
        
        for i in 0 ..< 5 { createSlot(at: CGPoint(x: 100 + (i * 170), y: 410)) }
        for i in 0 ..< 4 { createSlot(at: CGPoint(x: 180 + (i * 170), y: 320)) }
        for i in 0 ..< 5 { createSlot(at: CGPoint(x: 100 + (i * 170), y: 230)) }
        for i in 0 ..< 4 { createSlot(at: CGPoint(x: 180 + (i * 170), y: 140)) }

    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    func createSlot(at position: CGPoint) {
        let slot = WhackSlot()
        slot.configure(at: position)
        addChild(slot)
        slots.append(slot)
    }
}
