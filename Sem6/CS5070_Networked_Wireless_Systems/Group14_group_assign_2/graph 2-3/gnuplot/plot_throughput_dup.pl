set terminal png size 640,480 #(sets the image format and dimensions)
set output "graph3.png" #(sets the image name)

#set xdata time
#set timefmt "%S"
set xlabel "Time (s)"

set autoscale

set ylabel "Throughput (Mbps)"
#set format y "%s"

set title "Instantaneous throughput for UE at different speeds"
#set style line 5 lt rgb "cyan" lw 1 pt 2


#plot "throughput_PfFf.txt" using 1:6 with lines title "SINR PfPf(dbm)", \
 #    "throughput_FdMt.txt" using 1:6 title with lines "SINR FdMt(dbm)", \
  #   "throughput_RrFf.txt" using 1:6 title with lines "SINR RrFf(dbm)", \ 		
   #  "throughput_FdBet.txt" using 1:6 title with lines "SINR FdBet(dbm)" 	

plot "thr_20_1_even.txt" using 1:2 with lines title "Throughput for UE 1 at speed 20 m/s (Mbps)", \
     "thr_50_20_even.txt" using 1:2 with lines title "Throughput for UE 20 at speed 50 m/s (Mbps)", \
     "thr_100_17_even.txt"  using 1:2 with lines title "Throughput for UE 17 at speed 100 m/s (Mbps)"