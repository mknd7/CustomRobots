# AI CS-6613 Project 2 submission

**Group 17**'s submission

Group members: Akash Harikrishnan (ah5431), Mukund Vijayaraghavan (mv2167) and Robby Siu (rs7046)

We used AWS Robomaker with a **c4.2xlarge** instance (environment **group17-2**). For task 1, we set up the **Docker** container to run the project. We had many setup issues (tried to run natively first) which led to loss of time. We were able to get it working eventually (Docker container), but the instance had a lot of lag (~1-2 fps in the beginning). In task 2, we specified locations along with each robot's path with their actions (loading, unloading), but we faced issues here as well. For task 3, we wrote a planner in PDDL, specifying predicates and actions (eg. **avoid collision**). Given the time constraints, we were not able to build the behaviour trees and integrate with Plansys2 and Nav2.

## MD report:
In **group17-multirobot** branch - https://github.com/mknd7/CustomRobots/tree/group17-multirobot
