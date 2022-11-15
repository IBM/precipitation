#!/bin/sh

#wget https://meteonet.umr-cnrm.fr/dataset/CHANGELOG.md -P ./meteonet/
#wget https://meteonet.umr-cnrm.fr/dataset/LICENCE.md -P ./meteonet/


for area in NW SE ; do \
    for year in 2016 2017 2018 ; do \
	if [ ! -e ./${area}_rainfall_${year} ] ; then \
	    mkdir -p ./meteonet/${area}_rainfall_${year}
	    
	    wget https://meteonet.umr-cnrm.fr/dataset/data/${area}/radar/rainfall/${area}_rainfall_${year}.tar.gz -P ./ ;
	    tar zxf ${area}_rainfall_${year}.tar.gz
	    pushd ${area}_rainfall_${year}
	    for month in 01 02 03 04 05 06 07 08 09 10 11 12 ; do \
		tar zxf rainfall-${area}-${year}-${month}.tar.gz -C ../meteonet/${area}_rainfall_${year} ;
	    done
	    popd
	fi
    done
done
