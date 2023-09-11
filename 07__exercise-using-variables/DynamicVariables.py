import random
import time
import math

RANDOM_INT = random.randint(0, 10)  # random integer in range [0,10]

CURRENT_TIME = time.asctime()       # timestamp like 'Thu Apr  6 12:45:21 2006'

if time.localtime()[3] > 12:
    AFTERNOON = True
else:
    AFTERNOON = False

def get_area(diameter):
    radius = diameter / 2
    area = math.pi * radius * radius
    return area

AREA1 = get_area(1)
AREA2 = get_area(2)

dev = {'scalar': 'Scalar variable',
              'LIST__list': ['List','variable']}
uat = {'scalar' : 'Some other value',
              'LIST__list': ['Some','other','value'],
              'extra': 'variables1 does not have this at all'}

def get_variables(env):
    if env == 'dev':
        return dev
    elif env == 'uat':
        return uat
    else:
        # default variables
        return uat