# for alpha in {A..F}; do # or we can write A B C D E F instead of {A..F} or {A..F..1} 1=increament
#     echo $alpha
# done

#########################################
# or we could use pathname expansion

# for i in distros*.txt; do echo $i; done

#output
# distros-by-date.txt
# distros-dates.txt
# distros-key-names.txt
# distros-key-vernums.txt
# distros-names.txt 
# distros.txt
# distros-vernums.txt
# distros-versions.txt
##########################################


for (( i=1; i<11; i=i+1)); do
    echo $i
done