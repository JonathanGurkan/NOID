# Welcome to the NOID GitHub page!
(Pronounced like void)
NOID is a dungeon-crawling adventure game developed by **Karl Olma** and **Jonathan Gurkan** using GameMaker Studio 2. Dive into an action-packed world where you explore mysterious dungeons, defeat enemies, and capture Power Cards to upgrade your character's abilities.

## Lore
This is not a story about you, you are only a cog in this world’s dark hollowed out machine. The machines have taken over, they do have souls, but they got corrupted. The never ending red string, The circle, floats above us. Its light corrupts the machines, makes them angry and jealous of real flesh and blood.
The only feeling in your chest is revenge. Roaming through the caverns wanting to kill them all. That is your goal. It won’t make things better and you know that. Still you push on forward, push yourself through the caves, push your swords into the enemy. 
Hoping to find peace

Maybe there is still hope for our kind, even though we were the ones to shatter it.

## Features
- **Dungeon:** Conquer dungeons filled with challenges.
- **Combat System:** Engage in battles against enemies and powerful bosses.
- **Upgrade System:** Collect Power Cards to enhance your character’s Health, Stamina, Strength, and Defense. Each category features up to six upgrades, allowing for strategic customization.
- **Challenging Gameplay:** Plan your upgrades carefully—each Power Card can only be used for up to three or four upgrades.
- **Explore** the dungeon and uncover its secrets.
- **Defeat** enemies and bosses to gather Power Cards.

## Gameplay Mechanics
1.  **Game controls:**
    - You control the player with WASD and mouse buttons which leads to easy to master controls.
    - You attack with left mouse button, while Shift helps you to escape dodgy situations with a great dash.
    - The player (who's name is not known hence the name NOID) has two swords. He can attack with them and parry enemy attacks.
    - Player health is 100 hitpoints but can be upgraded with Power Cards.
    - Enemy hitpoints vary between 2 and 7 hitpoints depending on the type of enemy.
2.  **Characters:**
- _Player:_ <img src="https://github.com/user-attachments/assets/c50d1de5-3277-466e-b370-c9c044a1755b" alt="Player" align="right">
  - The player is a girl dressed in yellow, she has two swords and has the ability to attack and parry with the swords. She has a ton of attacks she can do. And she looks really good.
- _Enemies:_
    - **B.O.T:** <img src="https://github.com/user-attachments/assets/ca2c8b13-851b-46f4-8716-28a14aaf18f9" alt="B.O.T" align="right">B.O.T is a robot with two attacks: Fire dash and shoot. With the fire dash, B.O.T dashes towards the player dealing damage to the player and also knocking him back. The shoot attack is like the name suggests; B.O.T tries to shoot a projectile to the player, but only gunpowder comes out. It deals damage but not that much in comparison to a normal gunshot.
    - **Flamethrower:** Flamethrower has only one main attack: using his flamethrower to damage the player. If the player walks into the fire, he takes damage.
    - **Flower:** <img src="https://github.com/user-attachments/assets/a4e98dda-0fe4-4101-99d5-1c9c8038a213" alt="Flower" align="right">Flower is one of the smallest enemies in the game. It can hide in the ceiling or just stay on the ground but either way, he will approach the player and damage him with the steam that comes out of him.
    - **Flashbang:** <img src="https://github.com/user-attachments/assets/bd932ed7-8904-4831-aec0-dc4af4ad2e85" alt="Flashbang" align="right">Flashbang is the smallest enemy in the game. This little guy is a suicide bomber. It appears from out of the ground and goes to the player. When he is near enough, his antenna will shine so bright that the poor dude with explode.
    - **Mage**: <img src="https://github.com/user-attachments/assets/6ceaec8e-1fdd-45e4-8d94-e7785ad2a18a" alt="Mage" align="right">Mage is the most complex enemy in the game. This fella has not one, not two but three moves he can throw at the player. First is the blast: he shoots a blast from his gun towards the player which deals significant damage. Second is the close range attack: when the player comes too close, Mage will shoot a small blast from his gun to knock the player back, while directly after he will do his third move: Mage dashes backwards to avoid any attacks the player throws at him.<br>

- _Bosses:_
  - Every 3 or 4 rooms there will be a bossfight that the player needs to defeat to then get a power card for an upgrade one of his abilities. Inspiration of this is taken from the Legend of Zelda where every dungeon boss gives you a Heart Container. We don't have an idea what the bosses will look like but for the first one we are thinking about a dude with swords. We are not sure how we are going to implement this into the game.

3.  **Room design:** Instead of a traditional level design, we went for a progressive room design. The player wakes up in his first dungeon and learns how to do basic movement, combat and parcour. Our plan is to make ## rooms in total. This we think is a reasonal size to make before our deadline. With this amount of rooms the player will have plenty of room to play in. Every # rooms the player will encounter a boss that will give him a Power card which will give the opportunity to upgrade one of his abilties. Each boss will be progressively harder.
4.  **Environment:** You start in a dark cave where you explore the controls and get to play around with the enemies a bit. After defeating the first boss you will then go to the more open city environment where you explore even more of our game.
5.  **Gameplay and balance:** To maintain equal balance throughout the game, enemies will give rewards based on how hard it was for the player to kill them. Rewards could be Slices of Power, coins, health or stamina. Slices of Power are the building blocks of Power Cards. With a total of 3 Slices of Power the player gets one Power Card.

- **Upgrade Categories with Power Cards:**
  - **Health:** Increases your survivability.
  - **Stamina:** Improves endurance for actions like dodging or running.
  - **Strength:** Boosts your attack power.
  - **Defense:** Enhances your ability to take hits.

6. **Sound:** In NOID we want to use sounds that we'll be recording ourself, which could turn out to be great but also has a pretty big chance of failing hard, so we'll see how that will turn out

## Controls, Cheats and Extra's
- **Controls**
  - Move with WASD
  - Attack with Left Mouse Button
  - Dash with Shift
  - Jump with Space
- **Cheats**
    - Use `F12` to toggle between user and developer mode.
    - While in developer mode:
        -  You can jump between rooms with `1...2...3...`
        -  You can hold `X` to temporary disable collision
        -  You can press `C` to enable wall climb
        -  You can restart the room with `R`
        -  You can restart the game with `T`
        -  You can test the sound with `J` (please don't)
        -  You can go to a secret test room with `Y`
        -  You can instantly make your HP go to 1 with `L`
        -  You can kill all enemies instantly with `K`
    - Around the game there are secret entrances that lead to different parts of the game

## Scheme of the game development
In this GitHub Repository you can track the progress that we made up to the initial commit. Karl has done most of the logic and Jonathan contibuted after the foundation was set

## Requirements
- GameMaker Studio 2 or higher (for developers).
- PC or Mac for playing the game.

## Development Team
- **Karl:** Developer
- **Jonathan:** Developer

## Status
NOID is currently in development. Stay tuned for updates, including new features, improvements, and bug fixes! We are planning to finish a playable version of the game on the 7th of February and the final version on March 6th. We're not sure if we will be working on this project after the school project is finished but if you want to contribute to the project, please reach out to us on our GitHub pages. After the deadline has passed, we will continue to work on NOID as a hobby project

## Feedback
We'd love to hear your feedback! Please share your thoughts and suggestions by contacting us at:

- **Karl's Email:** s932051@cartesius.espritscholen.nl
- **Jonathan's Email:** j.gurkan@cartesius.espritscholen.nl

## License

This project is for educational and personal purposes. Redistribution or commercial use is not permitted without permission from the developers.

## Flowcharts

Along the way of programming the enemies, we've come up with flowcharts to better understand the logic. You can see them here:
![Screenshot 2024-12-20 at 21 51 07](https://github.com/user-attachments/assets/2bbc6309-7ca7-4238-a183-d9e8c556c1e1)
![Screenshot 2024-12-20 at 21 33 45](https://github.com/user-attachments/assets/b32813ff-1d2f-42e9-9b97-3b1d061160e7)
