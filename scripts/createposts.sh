#!/bin/bash

#make June file templates
for i in {1..8}; do
	vd=$[ 23+i ]
	filename="../_posts/2016-06-$vd-vacation-day-$i.markdown"

	echo "---" >> $filename
	echo "layout: post" >> $filename
	echo "title:  \"Day $i\"" >> $filename
	echo "date:   2016-06-$vd 22:00:00 -0500" >> $filename
	echo "categories: Amtrak vacation" >> $filename
	echo "---" >> $filename

done

#make July file templates
for i in {1..8}; do
	vd=$[ i + 8 ]

	filename="../_posts/2016-07-$i-vacation-day-$vd.markdown"

	echo "---" >> $filename
	echo "layout: post" >> $filename
	echo "title:  \"Day $vd\"" >> $filename
	echo "date:   2016-07-$i 22:00:00 -0500" >> $filename
	echo "categories: Amtrak vacation" >> $filename
	echo "---" >> $filename

done
