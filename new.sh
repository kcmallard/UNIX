#!/bin/bash

#This shit works kinda:

echo "What number do you want to use for the shift?"
read num

declare -A origin

x=({a..z})

case "$num" in
	0)
	y=({a..z})
	;;
	1)
	y=({{b..z},a})
	;;
	2)
	y=({{c..z},a,b})
	;;
	3)
	y=({{d..z},a,b,c})
	;;
	4)
	y=({{e..z},a,b,c,d})
	;;
	5)
	y=({{f..z},{a..e}})
	;;
	6)
	y=({{g..z},{a..f}})
	;;	
	7)
	y=({{h..z},{a..g}})
	;;
	8)
	y=({{i..z},{a..h}})
	;;
	9)
	y=({{j..z},{a..i}})
	;;
	10)
	y=({{k..z},{a..j}})
	;;
	11)
	y=({{l..z},{a..k}})
	;;
	12)
	y=({{m..z},{a..l}})
	;;
	13)
	y=({{n..z},{a..m}})
	;;
	14)
	y=({{o..z},{a..n}})
	;;
	15)
	y=({{p..z},{a..o}})
	;;
	16)
	y=({{q..z},{a..p}})
	;;
	17)
	y=({{r..z},{a..q}})
	;;
	18)
	y=({{s..z},{a..r}})
	;;
	19)
	y=({{t..z},{a..s}})
	;;
	20)
	y=({{u..z},{a..t}})
	;;
	21)
	y=({{v..z},{a..u}})
	;;
	22)
	y=({{w..z},{a..v}})
	;;
	23)
	y=({{x..z},{a..w}})
	;;
	24)
	y=({{y..z},{a..x}})
	;;
	25)
	y=({{z..z},{a..y}})
	;;
	*)
	echo "Sorry, you must use a shift less than 26 and greater than 0."
	;;
esac

for i in {0..25}
do
	origin[${x[i]}]=${y[i]}
done

for i in {0..25}
do
	echo ${origin[${x[i]}]}
done

# for i in {0..25}
# do
# 	origin[${x[i]}]=${z[i]}
# done

for x in "${!origin[@]}"
do
	sed -i 's/'${x}'/'${origin[${x}]}'/g' test.txt
	echo ${x}   ${origin[${x}]}
done



# Take the output from test.txt and splooge it into the other document, thereby








# for y in {a..z}
# do
# 	echo origin[${y}]
# 	echo ${origin[${y}]}
# done

# for x in "${!origin[@]}"
# do
# 	echo "${!origin[@]}"
# done

# for x in "${!origin[@]}"
# do
# 	echo ${x}
# done

# for x in "${!origin[@]}"
# do
# 	echo ${origin[${x}]}
# done


#Tried:
# origin[f]=z

# echo ${origin[f]}

# sed -i 's/f/F/g' new.txt

# #Substitute the inOrder with the reverseOrder

# inOrder=();
# reverseOrder=();

# for w in {a..z}
# do
# 	inOrder+=(${w})
# done

# for z in {z..a}
# do
# 	reverseOrder+=(${z})
# done

# echo ${inOrder[@]}
# echo ${reverseOrder[@]}

# sed -i 's/something/g' new.txt