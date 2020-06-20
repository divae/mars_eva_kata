# 👋 ARRANGE

## My Name:
- 👩🏼‍🚀 Estela Medrano.

## One curiosity:
- I love 🤖.

## My Social Networks:
- Linkedin | estela-medrano-jiménez-52563776: [go...](https://www.linkedin.com/in/estela-medrano-jim%C3%A9nez-52563776/)

- GitHub | @divae: [go..](https://github.com/divae)

- Twitter | @EstelaYoMisma: [go..](https://twitter.com/EstelaYoMisma)

- Blog | enfamilialohacemosmejor [go..](https://enfamilialohacemosmejor.blogspot.com/)

# 🦾 ACT

## Mars Eva Kata
- 💎 Ruby and RSpec with Bundle.
- 🎯 I will use some of the requeriments of Kata-log Website [(go)](https://kata-log.rocks/mars-rover-kata)

## The world

                ------------------------------------
                -2, 2 | -1, 2 | 0, 2 |  1, 2 |  2, 2 
    -+          ------------------------------------      ++
                -2, 1 | -1, 1 | 0, 1 |  1, 1 |  2, 2
                ------------------------------------
                -2, 0 | -1, 0 | 0, 0 |  1, 0 |  2, 0 
                ------------------------------------
                -2,-1 | -1,-1 | 0,-1 |  1,-1 |  2,-2
    --          ------------------------------------      +-
                -2,-2 | -1,-2 | 0,-2 |  1,-2 |  2,-2 



## Task
You’re part of the team that explores Mars by sending remotely controlled vehicles  to the surface of the planet. Develop an API that translates the commands sent from earth into instructions that are understood by Eva.

## Requirements
- 🕹️ Given the initial starting point (0,0) of a Eva and the direction (N) it is facing.
- 📡 Eva receives a character array of commands(f,b,r,l).
- 👆👇 Implement commands that move Eva forward/backward.
- 👈👉 Implement commands that turn Eva left/right.
- 🌎 Implement wrapping from one edge of grid to another. (planets are spheres after all)
- 🔃 Implement changes of direction('N', 'S', 'E', 'W') 

# 💃 ASSERT
 
 >The **Strategy** is that in the world there can only be one robot that can move in all directions.

## Class Game
- The class game generates the robot at the point and checks that everything is well integrated in the tests.

## Class Robot
- The first time it lands at point 0.0 of the plane heading north.
- Knows how to move around the plane using position and direction vectors.
- Knows how to move around the plane using position and direction vectors.

## Class Vector
- It is the class in charge of changing the position of the robot using the point and direction classes to generate the new coordinatee.
- It tells the robot where it is and in which direction.

## Class Point
- Coordinate axis handler.

## Classes East. North, South, West
- Knows how the axes are modified with direction in mind.


## Running Tests
```Console
$ rspec
```

## Next Steps
- Change method "change" in Vector classes, I think it would be good to apply the command pattern to simplify that code and make it clearer.
- An interface for the address classes would ensure that they all have the same methods.
