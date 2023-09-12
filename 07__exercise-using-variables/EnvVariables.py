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