set terminal pdf 

#red1 = "#99004d"; blue1 = "#004d99"; green1="00994d"; violet1="#660066"; 
red2 = "#B22222"; green2 = "#8FBC8F"; blue3 = "#56B4E9"; blue2 = "#20B2AA"; brown = "#800000"; orange2 = "#E69F00"
set style line 1 lc rgb blue3 lt 1 lw 1
set style line 2 lc rgb green2 lt 1 lw 1
set style line 3 lc rgb orange2 lt 1 lw 1

set style data histograms
set style histogram cluster gap 1
#set style fill pattern border -1
set offset -0.4,-0.4,0,0
set style fill solid
set boxwidth -1 relative

set ylabel "Time (ms)" font "Times,18"
set ytics font "Times, 18"
set grid ytics
set key fixed top vertical noreverse noenhanced autotitle maxcols 2 maxrows 4 samplen 1.2 # maxcols 3
set key font "Times, 14"

#set datafile separator ","
set palette defined (0 '#e0e8f5', 1 '#31bd71', 2 '#e0e8f5', 3 '#d99795', 4 '#e0e8f5', 5 '#9ab5e4', 6 "#ffffff", 7 "#a2a2a2")
dx = .41
dy = .5
dy2 = .4
dx2 = 0.2
dx3 = .07


set output 'pca.pdf'
set yrange [0:60]

set title 'pca'
p 'pca.data' u ($2/1000):xticlabels(1) t "FC Boehm-Vanilla" ls 1 fs pattern 2, '' u ($0-dx):($2/1000):(sprintf("%3.2f",$2/1000)) with labels font "Times Bold,8" offset 0,dy tc rgb blue3 notitle,\
	    '' u ($3/1000) ls 3 t "FC Boehm-SPML" fs pattern 2,\
	    '' u ($4/1000) ls 2 t "FC Boehm-EPML" fs pattern 2, '' u ($0-dx2):($4/1000):(sprintf("%3.2f",$4/1000)) with labels font "Times Bold,8" offset 0,dy2 tc rgb green2 notitle,\
	    '' u ($5/1000) ls 1 t "IC Boehm-Vanilla",\
	    '' u ($6/1000) ls 3 t "IC Boehm-SPML",\
	    '' u ($7/1000) ls 2 t "IC Boehm-EPML",\
	    '' u ($8/1000) ls 1 t "CC Boehm-Vanilla" fill pattern 4,\
	    '' u ($9/1000) ls 3 t "CC Boehm-SPML" fill pattern 4,\
	    '' u ($10/1000) ls 2 t "CC Boehm-EPML" fill pattern 4


set output 'kmeans.pdf'
set yrange [0:80]

set title 'kmeans'
p 'kmeans.data' u ($2/1000):xticlabels(1) t "FC Boehm-Vanilla" ls 1 fs pattern 2, '' u ($0-dx):($2/1000):(sprintf("%3.2f",$2/1000)) with labels font "Times Bold,8" offset 0,dy tc rgb blue3 notitle,\
	    '' u ($3/1000) ls 3 t "FC Boehm-SPML" fs pattern 2,\
	    '' u ($4/1000) ls 2 t "FC Boehm-EPML" fs pattern 2, '' u ($0-dx2):($4/1000):(sprintf("%3.2f",$4/1000)) with labels font "Times Bold,8" offset 0,dy2 tc rgb green2 notitle,\
	    '' u ($5/1000) ls 1 t "IC Boehm-Vanilla",\
	    '' u ($6/1000) ls 3 t "IC Boehm-SPML",\
	    '' u ($7/1000) ls 2 t "IC Boehm-EPML",\
	    '' u ($8/1000) ls 1 t "CC Boehm-Vanilla" fill pattern 4,\
	    '' u ($9/1000) ls 3 t "CC Boehm-SPML" fill pattern 4,\
	    '' u ($10/1000) ls 2 t "CC Boehm-EPML" fill pattern 4


set output 'string-match.pdf'
set yrange [0:70]

set title 'string-match'
p 'string_match.data' u ($2/1000):xticlabels(1) t "FC Boehm-Vanilla" ls 1 fs pattern 2, '' u ($0-dx):($2/1000):(sprintf("%3.2f",$2/1000)) with labels font "Times Bold,8" offset 0,dy tc rgb blue3 notitle,\
	    '' u ($3/1000) ls 3 t "FC Boehm-SPML" fs pattern 2,\
	    '' u ($4/1000) ls 2 t "FC Boehm-EPML" fs pattern 2, '' u ($0-dx2):($4/1000):(sprintf("%3.2f",$4/1000)) with labels font "Times Bold,8" offset 0,dy2 tc rgb green2 notitle,\
	    '' u ($5/1000) ls 1 t "IC Boehm-Vanilla",\
	    '' u ($6/1000) ls 3 t "IC Boehm-SPML",\
	    '' u ($7/1000) ls 2 t "IC Boehm-EPML",\
	    '' u ($8/1000) ls 1 t "CC Boehm-Vanilla" fill pattern 4,\
	    '' u ($9/1000) ls 3 t "CC Boehm-SPML" fill pattern 4,\
	    '' u ($10/1000) ls 2 t "CC Boehm-EPML" fill pattern 4



set output 'histogram.pdf'
set yrange [0:300]

set title 'histogram'
p 'histogram.data' u ($2/1000):xticlabels(1) t "FC Boehm-Vanilla" ls 1 fs pattern 2, '' u ($0-dx):($2/1000):(sprintf("%3.2f",$2/1000)) with labels font "Times Bold,8" offset 0,dy2 tc rgb blue3 notitle,\
	    '' u ($3/1000) ls 3 t "FC Boehm-SPML" fs pattern 2,\
	    '' u ($4/1000) ls 2 t "FC Boehm-EPML" fs pattern 2, '' u ($0-dx2):($4/1000):(sprintf("%3.2f",$4/1000)) with labels font "Times Bold,8" offset 0,dy2 tc rgb green2 notitle,\
	    '' u ($5/1000) ls 1 t "IC Boehm-Vanilla",\
	    '' u ($6/1000) ls 3 t "IC Boehm-SPML",\
	    '' u ($7/1000) ls 2 t "IC Boehm-EPML",\
	    '' u ($8/1000) ls 1 t "CC Boehm-Vanilla" fill pattern 4,\
	    '' u ($9/1000) ls 3 t "CC Boehm-SPML" fill pattern 4,\
	    '' u ($10/1000) ls 2 t "CC Boehm-EPML" fill pattern 4




set output 'word-count.pdf'
set yrange [0:80]

set title 'word-count'
p 'word_count.data' u ($2/1000):xticlabels(1) t "FC Boehm-Vanilla" ls 1 fs pattern 2, '' u ($0-dx):($2/1000):(sprintf("%3.2f",$2/1000)) with labels font "Times Bold,8" offset 0,dy tc rgb blue3 notitle,\
	    '' u ($3/1000) ls 3 t "FC Boehm-SPML" fs pattern 2,\
	    '' u ($4/1000) ls 2 t "FC Boehm-EPML" fs pattern 2, '' u ($0-dx2):($4/1000):(sprintf("%3.2f",$4/1000)) with labels font "Times Bold,8" offset 0,dy2 tc rgb green2 notitle,\
	    '' u ($5/1000) ls 1 t "IC Boehm-Vanilla",\
	    '' u ($6/1000) ls 3 t "IC Boehm-SPML",\
	    '' u ($7/1000) ls 2 t "IC Boehm-EPML",\
	    '' u ($8/1000) ls 1 t "CC Boehm-Vanilla" fill pattern 4,\
	    '' u ($9/1000) ls 3 t "CC Boehm-SPML" fill pattern 4,\
	    '' u ($10/1000) ls 2 t "CC Boehm-EPML" fill pattern 4



set output 'matrix-mul.pdf'
set yrange [0:60]

set title 'matrix-mutltiply'
p 'matrix_mul.data' u ($2/1000):xticlabels(1) t "FC Boehm-Vanilla" ls 1 fs pattern 2, '' u ($0-dx):($2/1000):(sprintf("%3.2f",$2/1000)) with labels font "Times Bold,8" offset 0,dy tc rgb blue3 notitle,\
	    '' u ($3/1000) ls 3 t "FC Boehm-SPML" fs pattern 2,\
	    '' u ($4/1000) ls 2 t "FC Boehm-EPML" fs pattern 2, '' u ($0-dx2):($4/1000):(sprintf("%3.2f",$4/1000)) with labels font "Times Bold,8" offset 0,dy2 tc rgb green2 notitle,\
	    '' u ($5/1000) ls 1 t "IC Boehm-Vanilla",\
	    '' u ($6/1000) ls 3 t "IC Boehm-SPML",\
	    '' u ($7/1000) ls 2 t "IC Boehm-EPML",\
	    '' u ($8/1000) ls 1 t "CC Boehm-Vanilla" fill pattern 4,\
	    '' u ($9/1000) ls 3 t "CC Boehm-SPML" fill pattern 4,\
	    '' u ($10/1000) ls 2 t "CC Boehm-EPML" fill pattern 4



set output 'gcbench.pdf'
set yrange [0:350]
set key fixed left vertical noreverse noenhanced autotitle maxcols 1 maxrows 4 samplen 1.2 # maxcols 3
set title 'GCbench'
p 	    'gcbench.data' u ($2/1000):xticlabels(1) t "FC Boehm-Vanilla" ls 1 fs pattern 2, '' u ($0-.35):($2):(sprintf("%3.2f",$2)) with labels rotate by 20 right  font "Times Bold,8" offset 0,.7 tc rgb blue3 notitle,\
	    '' u ($3) ls 3 t "FC Boehm-SPML" fs pattern 2,\
	    '' u ($4) ls 2 t "FC Boehm-EPML" fs pattern 2, '' u ($0-.15):($4):(sprintf("%3.2f",$4)) with labels rotate by 20 right  font "Times Bold,8" offset 0,0.7 tc rgb green2 notitle,\
	    '' u ($5) ls 1 t "IC Boehm-Vanilla",\
	    '' u ($6) ls 3 t "IC Boehm-SPML",\
	    '' u ($7) ls 2 t "IC Boehm-EPML",\
	    '' u ($8) ls 1 t "CC Boehm-Vanilla" fill pattern 4,\
	    '' u ($9) ls 3 t "CC Boehm-SPML" fill pattern 4,\
	    '' u ($10) ls 2 t "CC Boehm-EPML" fill pattern 4
	    

	    
set output 'boehm.pdf'
set yrange [0:10000]
set logscale y 10

set xtics rotate by 45 right font "Times, 18"
p 	    'boehm.data' u ($2/1000):xticlabels(1) t "FC Boehm-Vanilla" ls 1 fs pattern 2,\
	    '' u ($3/1000) ls 3 t "FC Boehm-SPML" fill pattern 2,\
	    '' u ($4/1000) ls 1 t "IC Boehm-Vanilla",\
	    '' u ($5/1000) ls 3 t "IC Boehm-SPML",\
	    '' u ($6/1000) ls 1 t "CC Boehm-Vanilla" fill pattern 4,\
	    '' u ($7/1000) ls 3 t "CC Boehm-SPML" fill pattern 4


set output 'kmeans_stacked.pdf' 
set style histogram rowstacked
unset logscale
set yrange [0:50]
set title 'kmeans'

plot newhistogram "Small",\
	'kmeans_stacked.data'  index 0  u ($2/1000):xticlabels(1) t "Other Cycles" ls 1,\
	''  index 0 u ($3/1000) ls 3 t "First Cycle" fs pattern 2,\
newhistogram "Medium",\
	'kmeans_stacked.data'  index 1 u ($2/1000):xticlabels(1) ls 1,\
	''  index 1 u ($3/1000) ls 3 fs pattern 2,\
newhistogram "Large",\
	'kmeans_stacked.data'  index 2 u ($2/1000):xticlabels(1) ls 1,\
	'' u ($3/1000) index 2 ls 3 notitle fs pattern 2

#this for printing values (labels) on bars
#p 'boehm.data' u 2:xticlabels(1) t "First Cycle" ls 1 fs pattern 9, '' u  ($0-dx):($2):(sprintf("%3.f",$2)) with labels font "Times Bold,6" offset 0,dy notitle,\
#	    '' u 3 t "Intermediate Cycles" ls 3 fill pattern 5, '' u  ($0-dx2):($3):(sprintf("%3.1f",$3)) with labels font "Times Bold,6" offset 0,-dy  notitle,\
#	    '' u 4 ls 3 notitle fill pattern 5, '' u  ($0-dx3):($4):(sprintf("%.1f",$4)) with labels font "Times Bold,6" offset 0,-dy  notitle,\
#	    '' u 5 ls 3 notitle fill pattern 5, '' u  ($0+dx3):($5):(sprintf("%3.1f",$5)) with labels font "Times Bold,6" offset 0,-dy  notitle,\
#	    '' u 6 ls 3 notitle fill pattern 5, '' u  ($0+dx2):($6):(sprintf("%3.1f",$6)) with labels font "Times Bold,6" offset 0,-dy  notitle,\
#	    '' u 7 t "Complete Collector" ls 2 fill pattern 2,'' u  ($0+dx):($7):(sprintf("%3.1f",$7)) with labels font "Times Bold,6" offset 0,1.5*dy notitle# > 0 ? $6 : 1/0
#

