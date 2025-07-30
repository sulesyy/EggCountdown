//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tittleLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    // progressBar'ı bağladığından emin ol

    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]

    var timer = Timer()
    var secondsRemaining = 0
    var totalTime = 0          // EKLENDİ
    var secondsPassed = 0      // EKLENDİ

    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness] ?? 0
        secondsRemaining = totalTime
        secondsPassed = 0
        progressBar.progress = 0.0
        tittleLabel.text = hardness
        startTimer()
    
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] timer in
            guard let self = self else { return }
            
            if self.secondsRemaining > 0 {
                self.secondsPassed += 1
                self.secondsRemaining -= 1
                let progress = Float(self.secondsPassed) / Float(self.totalTime)
                self.progressBar.setProgress(progress, animated: true)
                self.tittleLabel.text = "\(self.secondsRemaining) seconds remaining"
            } else {
                timer.invalidate()
                self.tittleLabel.text = "DONE!"
                self.progressBar.setProgress(1.0, animated: true)
            }
        }
    }
}
