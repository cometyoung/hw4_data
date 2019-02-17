srun --partition staclass --pty bash -i
unzip -p /group/staclassgrp/transaction.zip > data


# 1.1
head -1 data | tr ',' '\n' > colname_index.txt

# 1.2 
wc -L data

# 1.3
grep -i "bicycle" data > bicycle.csv
wc -l bicycle.csv

# 1.4 
cut -d',' -f18 data | sort -n | uniq > funding_agency_set.txt
wc -l funding_agency_set.txt

# 1.5 
cut -d',' -f8,25 file | awk '$2!=""' | sort -nr | head > large.csv