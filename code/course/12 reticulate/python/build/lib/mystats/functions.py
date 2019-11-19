import statistics

def summary(v):
    ans = {'Mean'   : statistics.mean(v),
           'SD'     : statistics.stdev(v),
           'Median' : statistics.median(v)}
    return ans

