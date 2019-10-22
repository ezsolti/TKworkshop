#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
fix _static _source
"""

import os

files=os.listdir('_build/html')

for file in files:
    if file[-4:]=='html':
        print('changing...')
        print(file)
        newstr=open('_build/html/'+file).read().replace('_static/','static/').replace('_sources/','sources/').replace('_images/','images/')
        open('_build/html/'+file,'w').write(newstr)
        print('done')
        
        


