# Report
**Group 17**: Akash Harikrishnan (ah5431), Mukund Vijayaraghavan (mv2167) and Robby Siu (rs7046)

Trello board invite link: https://trello.com/invite/b/WgtxnEOZ/17865c4137c78451ebdf922b00274c32/collaborative-robotics-project

Link to board: https://trello.com/b/WgtxnEOZ

Link to exercise folder: https://github.com/mknd7/CustomRobots/tree/group17-multirobot/amazon_robot/exercise

## Task 1 - Steps taken to complete setup:

- Tried natively with Windows first
  - Used Docker to work with provided image but the resultant setup was very slow and unusable.
- [success] Used **AWS Robomaker**

  We chose **c4.2xlarge** instances for the **ROS2 Foxy** environment.

  - Tried setup from scratch, without Docker, installing Nav2 and other dependencies. We succesfully installed all missing dependencies, but could not proceed without a certain BondCpp package. This caused 3 other dependencies to be unable to work.
  - [success] Used **Docker** with image provided from the exercise to succesfully bring up the environment.

## Task 2 - Planner:

- Fixed the location of the robots using the 2D Pose Estimate in RViz.
