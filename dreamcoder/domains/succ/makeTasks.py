

from dreamcoder.type import *
from dreamcoder.task import Task
from dreamcoder.utilities import eprint, hashable

from random import randint, random, seed
from itertools import product

def make_list_bootstrap_tasks():
    seed(42)

    def suffixes(l):
        if l == []:
            return []
        else:
            return [l[1:]] + suffixes(l[1:])

    def flip(): return random() > 0.5

    def randomSuffix():
        return [randint(0, 9) for _ in range(randint(1, 4))]

    def randomList(minimum=1, minimumLength=2, maximumLength=2):
        return [randint(minimum, 9) for _ in range(randint(minimumLength, maximumLength))]

    # def randomListOfLists():
    #     return [randomSuffix() for _ in range(randint(2, 4))]

    # def randomListOfLists_bool(l=None):
    #     if l is None:
    #         l = randint(4, 7)
    #     return [randomBooleanList() for _ in range(l)]

    # def randomBooleanList():
    #     return [flip() for _ in range(randint(4, 7))]

    # Reliably learned in under a minute; always triggers learning of length
    # primitive

    operatorBootstrap = [
        Task ("add", arrow(tint, tint, tint),
             [((l[0],l[1]), l[0] + l[1])
             for _ in range (50)
             for l in [randomList()]]),
        Task ("minus", arrow(tint, tint, tint),
             [((l[0],l[1]), l[0] - l[1])
             for _ in range (50)
             for l in [randomList()]]),
        Task ("multiply", arrow(tint, tint, tint),
             [((l[0],l[1]), l[0] * l[1])
             for _ in range (50)
             for l in [randomList()]])
        # Task ("divide", arrow(tint, tint, tint),
        #      [((l[0],l[1]), l[0] / l[1])
        #      for _ in range (50)
        #      for l in [randomList()]])
    ]

    return operatorBootstrap

def exportTasks():
    import sys
    import pickle as pickle

    n_examples = 15
    if len(sys.argv) > 1:
        n_examples = int(sys.argv[1])

    eprint("Downloading and generating dataset")
    tasks = sorted(make_list_tasks(n_examples), key=lambda t: t.name)
    eprint("Got {} list tasks".format(len(tasks)))

    with open("data/list_tasks.pkl", "w") as f:
        pickle.dump(tasks, f)
    eprint("Wrote list tasks to data/list_tasks.pkl")