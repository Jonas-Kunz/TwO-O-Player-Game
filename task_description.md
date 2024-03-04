# TwO-O-Player Match Game

## Description

  Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Requirments

- Both Players start with 3 lives
- Players lose a lif if they answer a question wrong
- At the end of every turn output a score for both players
- Game ends when a player loses all lives, at this point announce the winning player and the scores.

## Example prompt

    Player 1: WHat does 5 plus 3 equal?
    > 9
    Player 1: Seriously? No!
    P1 2/3 vs P2 3/3
    --- NEW TURN ---
    Player 2: What does 2 plus 6 equal?
    > 8
    Player 2: YES! You are correct.
    P1 2/3 vs P2 3/3
    --- NEW TURN ---
    --- LATER ---
    Player 1 wins with a score of 1/3
    --- GAME OVER ---

## Tasks

### Task 1: Extract Nouns For Classes

    Read the description above again and extract / write down the nouns that you feel could make for important entities (manifested in the form of classes) to contain (encapsulate) logic as part of this app.

### Task 2: Write Their Roles

  What is the role for each class?

    Write out a brief paragraph describing the role that class will play in your app.

  Remember that objects are important for two things:

  - State: Storing data describing themselves (variables)
  - Behaviour: Defining actions that can be performed on them (methods)

  Write down the methods for each class while also speaking to the following  points:

  - What information is relevent?
  - What will they need in order to be initialized?
  - What public methods will be defined on them?

  Furthermore:

  - Which class will contain the game loop
  - Which class should manage who the ``` Current_Player ``` is?
  - Which class(es) will contain user I/O and which will not have any?

### Task 3: Peer and Mentor Review

    Review your approach with your peers and then with a mentor to make sure you are on the right track before starting to write your code.

