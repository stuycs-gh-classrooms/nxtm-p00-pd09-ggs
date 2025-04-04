[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/rXX1_Uiw)
## Project 00
### NeXTCS
### Period: 9
## Name0: Thanapol Wongthep
---

This project will be completed in phases. The first phase will be to work on this document. Use github-flavoured markdown. (For more markdown help [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax) )

All projects will require the following:
- Researching new forces to implement.
- Method for each new force, returning a `PVector`  -- similar to `getGravity` and `getSpring` (using whatever parameters are necessary).
- A distinct demonstration for each individual force (including gravity and the spring force).
- A visual menu at the top providing information about which simulation is currently active and indicating whether movement is on or off.
- The ability to toggle movement on/off
- The ability to toggle bouncing on/off
- The user should be able to switch _between_ simluations using the number keys as follows:
  - `1`: Gravity
  - `2`: Spring Force
  - `3`: Drag
  - `4`: Custom Force
  - `5`: Combination


## Phase 0: Force Selection, Analysis & Plan

## Keybinds:
- 1,2,3,4,5: switches between the 5 forces
- R: resets everything and sets moving to false
- -,+: removes/adds orbs
- ' ': moving/not moving
- B: bounce/no bounce



## Forces:
- Gravity
- Drag
- Spring
- Thanapol Effect
- Gravity(not orbital motion) and spring

## Classes:
- OrbList
- Orbs
- FixedOrb
- OrbNode





#### Custom Force: Thanapol Effect (Subject to change)

### Forumla

- Either:
- A combination of (almost)every force in real life
- My own made up formula

### Custom Force
- What information that is already present in the `Orb` or `OrbNode` classes does this force use?
  - Center of the two circles
  - Mass
  - Size

- Does this force require any new constants, if so what are they and what values will you try initially?
  - It might(not sure yet)
  

- Does this force require any new information to be added to the `Orb` class? If so, what is it and what data type will you use?
  - No

- Does this force interact with other `Orbs`, or is it applied based on the environment?
  - Environent + interaction with other 'Orbs'

- In order to calculate this force, do you need to perform extra intermediary calculations? If so, what?
  - Yes, since the force is made up of other forces, I will need to calculate more forces

--- 

### Simulation 1: Gravity
<!--Describe how you will attempt to simulate orbital motion.-->

- Fixed orb "Earth". And every other orbnode will be attracted to it through gravity
--- 

### Simulation 2: Spring
<!--Describe what your spring simulation will look like. Explain how it will be setup, and how it should behave while running. -->

- Orbs in a straight line or in random positions. Each orb will be connected by a "spring" (black line) to the next or previous orb. 
## When running:
- springs change color depending on compression(red),stretched(blue), or normal(black)


--- 

### Simulation 3: Drag
<!--Describe what your drag simulation will look like. Explain how it will be setup, and how it should behave while running.-->

-Drag simulation is setup if you press "d". When the simulation is running, the drag force is applied to each OrbNode, slowing them down as they move.

--- 

### Simulation 4: Custom force
<!--Describe what your Custom force simulation will look like. Explain how it will be setup, and how it should behave while running.-->

## [Draft]
- Custom force is applied to each OrbNode in the orbs class.
- It should behave unpredictably 

--- 

### Simulation 5: Combination
<!-- Describe what your combination simulation will look like. Explain how it will be setup, and how it should behave while running. -->



