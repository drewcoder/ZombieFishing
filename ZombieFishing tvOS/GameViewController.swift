//
//  GameViewController.swift
//  ZombieFishing tvOS
//
//  Created by Ritchie Andrews on 3/11/23.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = GameScene.newGameScene()
        
        // Present the scene
        let skView = self.view as! SKView
        skView.presentScene(scene)
        
        skView.ignoresSiblingOrder = false
        
        skView.showsFPS = true
        skView.showsNodeCount = true
    }

}
