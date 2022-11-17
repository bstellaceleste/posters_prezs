set terminal pdf

red2 = "#B22222"; green2 = "#8FBC8F"; blue3 = "#56B4E9"; blue2 = "#20B2AA"; brown = "#492201"; orange2 = "#E69F00"; violet1="#660066"
newblue1 = "#87A7B3"; newblue2 = "#324756"; newblue3 = "#082032"; newblue4 = "#045491"; gray = "#696969"
set style line 1 lc rgb green2 lt 1 lw 1
set style line 2 lc rgb 'black' lt 1 lw 1
set style line 3 lc rgb orange2 lt 2 lw 2
set style line 4 lc rgb newblue4 lt 2 lw 2

#set style line 1 lc rgb green2 lt 1 lw 1
#set style line 2 lc rgb 'black' lt 1 lw 1
#set style line 3 lc rgb blue3 lt 2 lw 2
#set style line 4 lc rgb orange2 lt 2 lw 2
#set style line 6 lc rgb newblue4 lt 2 lw 2

set ytics font "Times, 25"
set xtics font "Times, 30"
set grid ytics
set tics nomirror
set ylabel "Time (s)" font "Times,30" offset -1
set xtics rotate by 90 right

set title font "Times,30" offset 0,-1.5
set bmargin 12
set lmargin 9
set tmargin 3

div=1000
#--------------------------------------------------------------------------------------------------

set style data histograms
set style fill solid 1.0 
set style histogram cluster gap 2
set offset -0.4,-0.4,0,0
set boxwidth .9
#--------------------------------------------------------------------------------------------------
set style line 5 \
    linecolor 'black' \
    linetype 1 linewidth 1.5\
    pointtype 0 pointsize 0
#--------------------------------------------------------------------------------------------------
unset key

set output 'tracked_large.pdf'
set yrange[0:12]
set ytics 0,4,12

set title 'Benchmark Config. Large'

plot 'tracked_large.data' u ($2/div):xticlabels(1) t 'Baseline' ls 2 fill pattern 6,\
     '' u ($3/div) t 'Boehm-EPML' ls 1,\
     '' u ($4/div) t 'Boehm-/proc' ls 4,\
     '' u ($5/div) t 'Boehm-SPML' ls 3,\
     'baseline.data' index 0 with linespoints linestyle 5 notitle, \
     ''              index 1 with linespoints linestyle 5 notitle,\
     ''              index 2 with linespoints linestyle 5 notitle,\
     ''              index 3 with linespoints linestyle 5 notitle,\
     ''              index 4 with linespoints linestyle 5 notitle,\
     ''              index 5 with linespoints linestyle 5 notitl
#--------------------------------------------------------------------------------------------------
unset key
#set key at 4.6,2.5 font "Times,15" Left reverse maxrows 2 samplen 1.2 width .5 box
unset lmargin
set lmargin 7

set output 'tracked_medium.pdf'
unset yrange
set yrange[0:3]
set ytics 0,1,3

set title 'Benchmark Config. Medium'

plot 'tracked_medium.data'   u ($2/div):xticlabels(1) t 'Baseline' ls 2 fill pattern 6,\
     '' u ($3/div) t 'Boehm-EPML' ls 1,\
     '' u ($4/div) t 'Boehm-/proc' ls 4,\
     '' u ($5/div) t 'Boehm-SPML' ls 3,\
     'baseline.data' index 6 with linespoints linestyle 5 notitle, \
     ''              index 7 with linespoints linestyle 5 notitle,\
     ''              index 8 with linespoints linestyle 5 notitle,\
     ''              index 9 with linespoints linestyle 5 notitle,\
     ''              index 10 with linespoints linestyle 5 notitle,\
     ''              index 11 with linespoints linestyle 5 notitle

#--------------------------------------------------------------------------------------------------
set key font "Times,18" top center Left reverse maxrows 2 samplen 1.2 width .5 box
unset lmargin
set lmargin 9

set output 'tracked_small.pdf'
set yrange[0:2]
set ytics 0,.5,2

set title 'Benchmark Config. Small'

plot 'tracked_small.data'   u ($2/div):xticlabels(1) t 'Baseline' ls 2 fill pattern 6,\
     '' u ($3/div) t 'Boehm-EPML' ls 1,\
     '' u ($4/div) t 'Boehm-/proc' ls 4,\
     '' u ($5/div) t 'Boehm-SPML' ls 3,\
     'baseline.data' index 12 with linespoints linestyle 5 notitle, \
     ''              index 13 with linespoints linestyle 5 notitle,\
     ''              index 14 with linespoints linestyle 5 notitle,\
     ''              index 15 with linespoints linestyle 5 notitle,\
     ''              index 16 with linespoints linestyle 5 notitle,\
     ''              index 17 with linespoints linestyle 5 notitle

#--------------------------------------------------------------------------------------------------
unset title
unset ytics
unset bmargin
unset tmargin
unset lmargin
unset xlabel
unset key 
#unset xtics
set tics nomirror

set bmargin 5
set lmargin 10

set xtics norotate font "Times, 28" 
set ytics font "Times, 30"
set xlabel "Memory Size (MB)" font "Times,30" offset 0,-1
set ylabel "Slowdown (x)" font "Times,35"  offset -2
set output 'slowdown.pdf'
set yrange[0:25]
set ytics 0,5,25
set xtics center
set label 1 at 5.75,26 "33.6x" right font "Times Bold,22"
set label 2 at 6.75,26 "66.4x" right font "Times Bold,22"

set key top left Left reverse maxcols 1 maxrows 4 samplen 1 width .6 box font "Times,30"

plot 'slowdown.data' u 2:xticlabels(1) t 'EPML' ls 1,\
     '' u 3 t '/proc' ls 4,\
     '' u 4 t 'userfault' ls 6,\
     '' u 5 t 'SPML' ls 3
#
#u 2:xticlabels(1) t 'Baseline' ls 2 fs border lc rgb newblue3,\
#     '' u 3 t 'CRIU-EPML' ls 1,\
#     '' u 4 t 'CRIU-/proc' ls 4,\
#     '' u 5 t 'CRIU-SPML' ls 3,\
