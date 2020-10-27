

from dreamcoder.type import *
from dreamcoder.task import Task
from dreamcoder.utilities import eprint, hashable

from random import randint, random, seed
from itertools import product

def make_list_task(name, examples, **params):
    input_type = guess_type([i for (i,), _ in examples])
    output_type = guess_type([o for _, o in examples])

    # We can internally handle lists of bools.
    # We explicitly create these by modifying existing routines.
    if name.startswith("identify"):
        boolexamples = [((i,), list(map(bool, o))) for (i,), o in examples]
        yield from make_list_task("bool-" + name, boolexamples, **params)
        # for now, we'll stick with the boolean-only tasks and not have a copy
        # for integers.
        return

    program_type = arrow(input_type, output_type)
    cache = all(hashable(x) for x in examples)

    if params:
        eq_params = ["{}={}".format(k, v) for k, v in params.items()]
        if len(eq_params) == 1:
            ext = eq_params[0]
        elif len(eq_params) == 2:
            ext = "{} and {}".format(*eq_params)
        else:
            ext = ", ".join(eq_params[:-1])
            ext = "{}, and {}".format(ext, eq_params[-1])
        name += " with " + ext

    yield Task(name, program_type, examples, cache=cache)


def make_list_tasks(n_examples):
    import listroutines as lr

    for routine in lr.find(count=100):  # all routines
        if routine.id in EXCLUDES:
            continue
        if routine.is_parametric():
            keys = list(routine.example_params()[0].keys())
            for params in map(lambda values: dict(zip(keys, values)),
                              product(range(6), repeat=len(keys))):
                try:
                    if routine.id == "rotate-k":
                        # rotate-k is hard if list is smaller than k
                        k = params["k"]
                        if k < 1:
                            continue
                        inps = []
                        for _ in range(n_examples):
                            r = randint(abs(k) + 1, 17)
                            inp = routine.gen(len=r, **params)[0]
                            inps.append(inp)
                    else:
                        inps = routine.gen(count=n_examples, **params)
                    examples = [((inp,), routine.eval(inp, **params))
                                for inp in inps]
                    yield from make_list_task(routine.id, examples, **params)
                except lr.APIError:  # invalid params
                    continue
        else:
            inps = routine.examples()
            if len(inps) > n_examples:
                inps = inps[:n_examples]
            elif len(inps) < n_examples:
                inps += routine.gen(count=(n_examples - len(inps)))
            examples = [((inp,), routine.eval(inp)) for inp in inps]
            yield from make_list_task(routine.id, examples)


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