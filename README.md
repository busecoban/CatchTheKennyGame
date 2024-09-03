# Catch The Thief Game



https://github.com/user-attachments/assets/4a59512c-f91e-41e5-b068-7b9f95b24000



This is a simple and fun iOS game developed using Swift and UIKit, where the objective is to catch the thief by tapping on the image that appears on the screen. The game keeps track of the score and high score, providing an engaging challenge for players.

## Features

- Timer: The game is time-based, with a countdown timer starting from 10 seconds.
- Score Tracking: The player's score increases by 1 for every successful tap on the thief image.
- Highscore Storage: The game stores the highest score using UserDefaults, allowing the player to try and beat their personal best.
- Random Thief Appearance: The thief appears randomly at different positions on the screen, making the game more challenging.
- Game Over Alert: When the time runs out, an alert is presented to the player with options to either replay the game or exit.

## Code Overview

- ViewController.swift: This file contains the main logic for the game.
score, highScore, timer, and counter are the primary variables used to manage the game's state.
- thiefArray holds the UIImageView objects representing the thief at different positions on the screen.
- @IBOutlet: Connects UI elements like labels and image views from the storyboard to the code.
- viewDidLoad(): Sets up the initial game state, including setting up timers and loading the high score.
- increaseScore(): Increments the player's score when they successfully tap on the thief image.
- decreaseTime(): Decrements the timer and checks if the game has ended.
- hideThief(): Randomly hides and shows the thief image, making the game challenging.
- AlertController: Presents an alert when the game ends, offering options to replay or exit.
