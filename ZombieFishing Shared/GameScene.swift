//
//  GameScene.swift
//  ZombieFishing Shared
//
//  Created by Ritchie Andrews on 3/11/23.
//

import SpriteKit

// States
enum GameState: Int {
  case readyToCast
  case casting
  case fishing
  case reelingIn
  case collectingFish
  case gameOver
}


class GameScene: SKScene {
    
    var fishCam: SKCameraNode?
    var boatSprite: SKSpriteNode?
    var fisherman: SKSpriteNode?
    var pole: SKSpriteNode?
    var hook: SKSpriteNode?
    var line: SKSpriteNode?
    // Game state
    var gameState: GameState = .readyToCast
    //
    // Timers
    var cloudTimer: Double = 0.0
    var fishTimer: Double = 0.0
    var tickTimer: Double = 0.0
    var fishingTimer: Double = 0.0
    //
    var yumFish: SKSpriteNode?
    var piranha: SKSpriteNode?
    var fishCaught: SKNode?

    var score: Int = 0
    var lives: Int = 3
    // Labels
    var scoreLabel: SKLabelNode?
    var livesLabel: SKLabelNode?
    var statusLabel: SKLabelNode?
    //
    // Sounds
    var reelStartSound = SKAction.playSoundFileNamed("Reel Start Sound", waitForCompletion: false)
    var reelTickSound = SKAction.playSoundFileNamed("Reel Tick Sound", waitForCompletion: false)
    var yumFishSound = SKAction.playSoundFileNamed("Yum Fish Sound", waitForCompletion: false)
    var zombieSound = SKAction.playSoundFileNamed("Zombie Sound", waitForCompletion: false)
    var gameOverSound = SKAction.playSoundFileNamed("Game Over Sound", waitForCompletion: true)
    var fishCaughtSound = SKAction.playSoundFileNamed("Fish Caught", waitForCompletion: false)
    var fishBashSound = SKAction.playSoundFileNamed("Fish Bash Sound", waitForCompletion: false)
    var fishOffSound = SKAction.playSoundFileNamed("Fish Off Sound", waitForCompletion: false)
    
    
    
    
    class func newGameScene() -> GameScene {
        // Load 'GameScene.sks' as an SKScene.
        guard let scene = SKScene(fileNamed: "GameScene") as? GameScene else {
            print("Failed to load GameScene.sks")
            abort()
        }
        
        // Set the scale mode to scale to fit the window
        scene.scaleMode = .aspectFill
        
        return scene
    }
    
    func setUpScene() {
        // Get label node from scene and store it for use later
       
        }
        
        // Create shape node to use during mouse interaction
        
    
    override func didMove(to view: SKView) {
        self.setUpScene()
    }

   
    }
    


#if os(iOS) || os(tvOS)
// Touch-based event handling
extension GameScene {

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
   
}

#endif

#if os(OSX)
// Mouse-based event handling
extension GameScene {

    override func mouseDown(with event: NSEvent) {
        let location = event.location(in: self)
        handlePlayerAction(at: location)

    
    }
    
    override func mouseDragged(with event: NSEvent) {
    
    }
    
    override func mouseUp(with event: NSEvent) {
    
    }

}
#endif

