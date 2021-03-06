# searchAgents.py
# ---------------
# Licensing Information:  You are free to use or extend these projects for
# educational purposes provided that (1) you do not distribute or publish
# solutions, (2) you retain this notice, and (3) you provide clear
# attribution to UC Berkeley, including a link to http://ai.berkeley.edu.
#
# Attribution Information: The Pacman AI projects were developed at UC Berkeley.
# The core projects and autograders were primarily created by John DeNero
# (denero@cs.berkeley.edu) and Dan Klein (klein@cs.berkeley.edu).
# Student side autograding was added by Brad Miller, Nick Hay, and
# Pieter Abbeel (pabbeel@cs.berkeley.edu).

# Students:
# Name            Student ID.
# Tou LEE         656128
# Jaime Martinez  642231

"""
This file contains all of the agents that can be selected to control Pacman.  To
select an agent, use the '-p' option when running pacman.py.  Arguments can be
passed to your agent using '-a'.  For example, to load a SearchAgent that uses
depth first search (dfs), run the following command:

> python pacman.py -p SearchAgent -a fn=depthFirstSearch

Commands to invoke other search strategies can be found in the project
description.

Please only change the parts of the file you are asked to.  Look for the lines
that say

"*** YOUR CODE HERE ***"

The parts you fill in start about 3/4 of the way down.  Follow the project
description for details.

Good luck and happy searching!
"""

from game import Directions
from game import Agent
from game import Actions
import util
import time
import search

#######################################################
# This portion is written for you, but will only work #
#       after you fill in parts of search.py          #
#######################################################

class SearchAgent(Agent):
    """
    This very general search agent finds a path using a supplied search
    algorithm for a supplied search problem, then returns actions to follow that
    path.

    As a default, this agent runs DFS on a PositionSearchProblem to find
    location (1,1)

    Options for fn include:
      depthFirstSearch or dfs
      breadthFirstSearch or bfs


    Note: You should NOT change any code in SearchAgent
    """

    def __init__(self, fn='depthFirstSearch', prob='PositionSearchProblem', heuristic='nullHeuristic'):
        # Warning: some advanced Python magic is employed below to find the right functions and problems

        # Get the search function from the name and heuristic
        if fn not in dir(search):
            raise AttributeError, fn + ' is not a search function in search.py.'
        func = getattr(search, fn)
        if 'heuristic' not in func.func_code.co_varnames:
            print('[SearchAgent] using function ' + fn)
            self.searchFunction = func
        else:
            if heuristic in globals().keys():
                heur = globals()[heuristic]
            elif heuristic in dir(search):
                heur = getattr(search, heuristic)
            else:
                raise AttributeError, heuristic + ' is not a function in searchAgents.py or search.py.'
            print('[SearchAgent] using function %s and heuristic %s' % (fn, heuristic))
            # Note: this bit of Python trickery combines the search algorithm and the heuristic
            self.searchFunction = lambda x: func(x, heuristic=heur)

        # Get the search problem type from the name
        if prob not in globals().keys() or not prob.endswith('Problem'):
            raise AttributeError, prob + ' is not a search problem type in SearchAgents.py.'
        self.searchType = globals()[prob]
        print('[SearchAgent] using problem type ' + prob)

    def registerInitialState(self, state,problem):
        """
        This is the first time that the agent sees the layout of the game
        board. Here, we choose a path to the goal. In this phase, the agent
        should compute the path to the goal and store it in a local variable.
        All of the work is done in this method!

        state: a GameState object (pacman.py)
        """
        if self.searchFunction == None: raise Exception, "No search function provided for SearchAgent"
        #starttime = time.time()
    #    problem = self.searchType(state) # Makes a new search problem
        print 'register ', problem
        self.actions  = self.searchFunction(problem) # Find a path
    #    totalCost = problem.getCostOfActions(self.actions)
    #    print('Path found with total cost of %d in %.1f seconds' % (totalCost, time.time() - starttime))
    #    if '_expanded' in dir(problem): print('Search nodes expanded: %d' % problem._expanded)

    def getAction(self, state):
        """
        Returns the next action in the path chosen earlier (in
        registerInitialState).  Return Directions.STOP if there is no further
        action to take.

        state: a GameState object (pacman.py)
        """
        if 'actionIndex' not in dir(self): self.actionIndex = 0
        i = self.actionIndex
        self.actionIndex += 1
        if i < len(self.actions):
            return self.actions[i]
        else:
            return Directions.STOP


#####################################################
# This portion is incomplete.  Time to write code!  #
#####################################################
class AStarFoodSearchAgent(SearchAgent):
    "A SearchAgent for FoodSearchProblem using A* and your foodHeuristic"
    def __init__(self,prob,heur):
        self.searchFunction = search.aStarSearch(prob, heur)
        self.searchType = FoodSearchProblem
        #self.actions  = self.searchFunction(prob) # Find a path
class FoodSearchProblem:
    """
    A search problem associated with finding the a path that collects all of the
    food (dots) in a Pacman game.

    A search state in this problem is a tuple ( pacmanPosition, foodGrid ) where
      pacmanPosition: a tuple (x,y) of integers specifying Pacman's position
      foodGrid:       a Grid (see game.py) of either True or False, specifying remaining food
    """
    def __init__(self, currentGameState,agentIndex,defendingFood):
        self.start = (currentGameState.getAgentPosition(agentIndex), defendingFood)
        self.agentIndex = agentIndex
        self.walls = currentGameState.getWalls()
        # self.currentGameState = currentGameState
        self._expanded = 0 # DO NOT CHANGE
        self.heuristicInfo = {} # A dictionary for the heuristic to store information
        # print 'init_goal'
        # self.goal = goal
        # print 'init_goal' , goal
        # self.visible = visible

    def getStartState(self):
        print self.start
        return self.start

    def isGoalState(self,state):
        #print len(state[1].asList(True)),len( self.goal)
        # return len(state[1].asList(True)) <16
        return len(state[1])

    def getSuccessors(self, state):
        "Returns successor states, the actions they require, and a cost of 1."
        successors = []
        self._expanded += 1 # DO NOT CHANGE
        for direction in [Directions.NORTH, Directions.SOUTH, Directions.EAST, Directions.WEST]:
            x,y = state[0]
            dx, dy = Actions.directionToVector(direction)
            nextx, nexty = int(x + dx), int(y + dy)
            if not self.walls[nextx][nexty]:
                nextFood = state[1].copy()
                nextFood[nextx][nexty] = False
                successors.append( ( ((nextx, nexty), nextFood), direction, 1) )
        #print successors
        return successors

    def getCostOfActions(self, actions):
        """Returns the cost of a particular sequence of actions.  If those actions
        include an illegal move, return 999999"""
        x,y= self.getStartState()[0]
        yo = (x,y)

        cost = 0
        for action in actions:
            # figure out the next state and see whether it's legal
            dx, dy = Actions.directionToVector(action)
            x, y = int(x + dx), int(y + dy)
            if self.walls[x][y]:
                return 999999
            
            cost += 1
        return cost


    def costOfPosition(self, position):
        x,y = position
        if(position.isPacman) and (self.timer>2):
            return 0
        elif position.Food:
            return 1
        elif self.walls[x][y]:
            return 999999;
        else:
            return 2

def manhattanHeuristic(position, problem, info={}):
    "The Manhattan distance heuristic for a PositionSearchProblem"
    xy1 = position
    xy2 = problem.goal
    return abs(xy1[0] - xy2[0]) + abs(xy1[1] - xy2[1])


def foodHeuristic(state, problem):
    """
    Your heuristic for the FoodSearchProblem goes here.

    This heuristic must be consistent to ensure correctness.  First, try to come
    up with an admissible heuristic; almost all admissible heuristics will be
    consistent as well.

    If using A* ever finds a solution that is worse uniform cost search finds,
    your heuristic is *not* consistent, and probably not admissible!  On the
    other hand, inadmissible or inconsistent heuristics may find optimal
    solutions, so be careful.

    The state is a tuple ( pacmanPosition, foodGrid ) where foodGrid is a Grid
    (see game.py) of either True or False. You can call foodGrid.asList() to get
    a list of food coordinates instead.

    If you want access to info like walls, capsules, etc., you can query the
    problem.  For example, problem.walls gives you a Grid of where the walls
    are.

    If you want to *store* information to be reused in other calls to the
    heuristic, there is a dictionary called problem.heuristicInfo that you can
    use. For example, if you only want to count the walls once and store that
    value, try: problem.heuristicInfo['wallCount'] = problem.walls.count()
    Subsequent calls to this heuristic can access
    problem.heuristicInfo['wallCount']
    """
    position, foodGrid = state
    "*** YOUR CODE HERE ***"
    pos = [position] #[state[0]]
    # goal = foodGrid.asList(True)
    goal = foodGrid
    heuristic = 0
    possibilities = util.PriorityQueue()
    while len(goal)>0:
        for p in pos:
            for g in goal:
                t = myDistance(p,g)
                possibilities.push((g,t),t)
        if possibilities.isEmpty():
            return 0
        thisMin,thisT = possibilities.pop()
        goal.remove(thisMin)
        possibilities = util.PriorityQueue()
        pos.append(thisMin)
        heuristic += thisT
    if heuristic < 0:
        return 0
    return heuristic

def myDistance(xy1,xy2):
    #manhattan
    #return abs(xy1[0] - xy2[0]) + abs(xy1[1] - xy2[1])
    #euclidean
    return ( (xy1[0] - xy2[0]) ** 2 + (xy1[1] - xy2[1]) ** 2 ) ** 0.5
def mazeDistance(point1, point2, gameState):
    """
    Returns the maze distance between any two points, using the search functions
    you have already built. The gameState can be any game state -- Pacman's
    position in that state is ignored.

    Example usage: mazeDistance( (2,4), (5,6), gameState)

    This might be a useful helper function for your ApproximateSearchAgent.
    """
    x1, y1 = point1
    x2, y2 = point2
    walls = gameState.getWalls()
    assert not walls[x1][y1], 'point1 is a wall: ' + str(point1)
    assert not walls[x2][y2], 'point2 is a wall: ' + str(point2)
    prob = PositionSearchProblem(gameState, start=point1, goal=point2, warn=False, visualize=False)
    return len(search.bfs(prob))





class PositionSearchProblem(search.SearchProblem):
    """
    A search problem defines the state space, start state, goal test, successor
    function and cost function.  This search problem can be used to find paths
    to a particular point on the pacman board.

    The state space consists of (x,y) positions in a pacman game.

    Note: this search problem is fully specified; you should NOT change it.
    """

    def __init__(self, gameState, agentIndex, costFn = lambda x: 1, goal=(1,1), start=None, warn=True, visualize=True):
        """
        Stores the start and goal.

        gameState: A GameState object (pacman.py)
        costFn: A function from a search state (tuple) to a non-negative number
        goal: A position in the gameState
        """
        self.walls = gameState.getWalls()
        self.startState = gameState.getAgentPosition(agentIndex)
        # self.startState = gameState.getPacmanPosition()
        if start != None: self.startState = start
        self.goal = goal
        self.costFn = costFn
        self.visualize = visualize
        # if warn and (gameState.getNumFood() != 1 or not gameState.hasFood(*goal)):
        #     print 'Warning: this does not look like a regular search maze'

        # For display purposes
        # self._visited, self._visitedlist, self._expanded = {}, [], 0 # DO NOT CHANGE

    def getStartState(self):
        return self.startState

    def isGoalState(self, state):

        isGoal = state == self.goal

        # For display purposes only
        # if isGoal and self.visualize:
        #     self._visitedlist.append(state)
        #     import __main__
        #     if '_display' in dir(__main__):
        #         if 'drawExpandedCells' in dir(__main__._display): #@UndefinedVariable
        #             __main__._display.drawExpandedCells(self._visitedlist) #@UndefinedVariable

        return isGoal

    def getSuccessors(self, state):
        """
        Returns successor states, the actions they require, and a cost of 1.

         As noted in search.py:
             For a given state, this should return a list of triples,
         (successor, action, stepCost), where 'successor' is a
         successor to the current state, 'action' is the action
         required to get there, and 'stepCost' is the incremental
         cost of expanding to that successor
        """

        successors = []
        for action in [Directions.NORTH, Directions.SOUTH, Directions.EAST, Directions.WEST]:
            x,y = state
            dx, dy = Actions.directionToVector(action)
            nextx, nexty = int(x + dx), int(y + dy)
            if not self.walls[nextx][nexty]:
                nextState = (nextx, nexty)
                cost = self.costFn(nextState)
                successors.append( ( nextState, action, cost) )

        # Bookkeeping for display purposes
        self._expanded += 1 # DO NOT CHANGE
        if state not in self._visited:
            self._visited[state] = True
            self._visitedlist.append(state)

        return successors

    def getCostOfActions(self, actions):
        """
        Returns the cost of a particular sequence of actions. If those actions
        include an illegal move, return 999999.
        """
        if actions == None: return 999999
        x,y= self.getStartState()
        cost = 0
        for action in actions:
            # Check figure out the next state and see whether its' legal
            dx, dy = Actions.directionToVector(action)
            x, y = int(x + dx), int(y + dy)
            if self.walls[x][y]: return 999999
            cost += self.costFn((x,y))
        return cost

class AnyFoodSearchProblem(PositionSearchProblem):
    """
    A search problem for finding a path to any food.

    This search problem is just like the PositionSearchProblem, but has a
    different goal test, which you need to fill in below.  The state space and
    successor function do not need to be changed.

    The class definition above, AnyFoodSearchProblem(PositionSearchProblem),
    inherits the methods of the PositionSearchProblem.

    You can use this search problem to help you fill in the findPathToClosestDot
    method.
    """


    def __init__(self, gameState,agentIndex,food,goal,visible,opponents,distFunc):
        "Stores information from the gameState.  You don't need to change this."
        # Store the food for later reference
        self.food = food
        self.goal = goal
        self.visible = visible
        self.gameState = gameState
        self.opponents = opponents
        self.getMazeDistance = distFunc
        # Store info for the PositionSearchProblem (no need to change this)
        self.walls = gameState.getWalls()

        self.start = self.startState = gameState.getAgentPosition(agentIndex)
        self.costFn = lambda x: 1
        self._visited, self._visitedlist, self._expanded = {}, [], 0 # DO NOT CHANGE
    def isGoalState(self, state):
        """
        The state is Pacman's position. Fill this in with a goal test that will
        complete the problem definition.
        """
        x,y = state
        #print state
    #print 'state', state
        "*** YOUR CODE HERE ***"
        # goal is if the state is in a food position
        return state == self.goal
        return state in self.food.asList()
        util.raiseNotDefined()

    def getCostOfActions(self, actions):
        """
        Returns the cost of a particular sequence of actions. If those actions
        include an illegal move, return 999999.
        """
        if actions == None: return 999999
        x,y= self.getStartState()
        cost = 0
        for action in actions:
            # Check figure out the next state and see whether its' legal
            dx, dy = Actions.directionToVector(action)
            x, y = int(x + dx), int(y + dy)

            if self.visible[0] != None:
                if self.gameState.getAgentState(self.opponents[0]).isPacman:
                     return 0
                if self.visible[0] == (x,y):
                    return 999999999
                elif myDistance(self.visible[0],(x,y))<4:
                    return 999999999
            if self.visible[1] != None:
                if self.gameState.getAgentState(self.opponents[1]).isPacman:
                     return 0
                if self.visible[1] == (x,y):
                    return 999999999
                elif myDistance(self.visible[1],(x,y))<4:
                    return 999999999

            if self.walls[x][y]: return 99999
            cost += self.costFn((x,y))
        return cost
# ___________________________

# class DefendingProblem:
    
#     def __init__(self, currObs, guardIndex, defendedFood):
    
#         self.walls = currObs.getWalls()
#         self.startPosition = currObs.getAgentPosition(guardIndex);
#         self.defendedFood = defendedFood
#         # self.goal = goal
#         self.costFn = lambda X:1
#         self.visualize = visualize
#         # if warn and (gameState.getNumFood() != 1 or not gameState.hasFood(*goal)):
#         #     print 'Warning: this does not look like a regular search maze'

#         # For display purposes
#         # self._visited, self._visitedlist, self._expanded = {}, [], 0 # DO NOT CHANGE

#     def getStartPosition(self):
#         return self.startPosition

#     def isGoalState(self, state):
#         if not self.defendedFood:
#             return True
        
#         return False

#         # isGoal = state == self.goal

#         # # For display purposes only
#         # if isGoal and self.visualize:
#         #     self._visitedlist.append(state)
#         #     import __main__
#         #     if '_display' in dir(__main__):
#         #         if 'drawExpandedCells' in dir(__main__._display): #@UndefinedVariable
#         #             __main__._display.drawExpandedCells(self._visitedlist) #@UndefinedVariable

#         return isGoal

#     def getSuccessors(self, state):
#         """
#         Returns successor states, the actions they require, and a cost of 1.

#          As noted in search.py:
#              For a given state, this should return a list of triples,
#          (successor, action, stepCost), where 'successor' is a
#          successor to the current state, 'action' is the action
#          required to get there, and 'stepCost' is the incremental
#          cost of expanding to that successor
#         """

#         successors = []
#         for action in [Directions.NORTH, Directions.SOUTH, Directions.EAST, Directions.WEST]:
#             x,y = state
#             dx, dy = Actions.directionToVector(action)
#             nextx, nexty = int(x + dx), int(y + dy)
#             if not self.walls[nextx][nexty]:
#                 nextState = (nextx, nexty)
#                 cost = self.costFn(nextState)
#                 successors.append( ( nextState, action, cost) )

#         # Bookkeeping for display purposes
#         self._expanded += 1 # DO NOT CHANGE
#         if state not in self._visited:
#             self._visited[state] = True
#             self._visitedlist.append(state)

#         return successors

#     def getCostOfActions(self, actions):
#         """
#         Returns the cost of a particular sequence of actions. If those actions
#         include an illegal move, return 999999.
#         """
#         if actions == None: return 999999
#         x,y= self.getStartPosition()
#         cost = 0
#         for action in actions:
#             # Check figure out the next state and see whether its' legal
#             dx, dy = Actions.directionToVector(action)
#             x, y = int(x + dx), int(y + dy)
#             if self.walls[x][y]: return 999999
#             cost += self.costFn((x,y))
#         return cost

# def defendingHeuristic(state, problem):

#     position, foodGrid = state
#     "*** YOUR CODE HERE ***"
#     pos = [position] #[state[0]]
#     # goal = foodGrid.asList(True)
#     goal = foodGrid
#     heuristic = 0
#     possibilities = util.PriorityQueue()
#     while len(goal)>0:
#         for p in pos:
#             for g in goal:
#                 t = myDistance(p,g)
#                 possibilities.push((g,t),t)
#         if possibilities.isEmpty():
#             return 0
#         thisMin,thisT = possibilities.pop()
#         goal.remove(thisMin)
#         possibilities = util.PriorityQueue()
#         pos.append(thisMin)
#         heuristic += thisT
#     if heuristic < 0:
#         return 0
#     return heuristic
