#!/usr/bin/env python

import csv

with open("temp.txt") as fin, open("extracted.csv", 'w') as fout:
    o=csv.writer(fout)
    o.writerow(('url', 'viewport', 'image_data', 'lossless_savings', 'lossy_savings', 'resize_savings'))
    for line in fin:
				o.writerow(line.split())