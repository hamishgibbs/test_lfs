#!/usr/bin/env python

import sys
import pandas as pd

def gen_data():
    pd.DataFrame(
        {'a': [1, 2, 3], 
        'b': [4, 5, 6]}
        ).to_csv(
            sys.argv[1], 
            index=False
        )

if __name__ == '__main__':
    gen_data()