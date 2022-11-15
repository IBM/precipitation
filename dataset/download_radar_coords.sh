#!/bin/sh


for area in NW SE ; do \
    wget -O meteonet/radar_coords_${area}.npz https://github.com/meteofrance/meteonet/blob/master/data_samples/radar/radar_coords_${area}.npz?raw=true ;
done
