echo 'What is the most popular pair of heroes ?'
sort hero-network.csv | uniq -c | sort -f -nr| head -1
echo 'Number of comics per hero'
awk -F',' '{print $1}' edges.csv | sort | uniq -c | sort -f -nr | head -10 #remove head -10 to have the completed list
echo 'The average number of heroes in comics.'
awk -F ',' '{print $2}' edges.csv | sort | uniq -c | wc -l > 'output.txt'
value=`cat output.txt`
value2=`cat edges.csv | wc -l`
echo $((value2/value))
