set terminal pdf 

green2 = "#8FBC8F"; orange2 = "#E69F00"
newblue1 = "#87A7B3"; newblue2 = "#324756"; newblue3 = "#082032"
pink1 ="#FFB6C1"; pink2 ="#C71585"; pink3 ="#DB7093"
brown1 = "#D2B48C"; brown2 ="#BC8F8F"; brown3 = "#F4A460"

set style line 1 lc rgb newblue2 lt 1 lw 1
set style line 2 lc rgb newblue1 lt 1 lw 1
set style line 3 lc rgb newblue3 lt 1 lw 1

#set style line 1 lc rgb newblue3 lt 1 lw 1 #proc
#set style line 2 lc rgb brown2 lt 2 lw 2 #epml
#set style line 3 lc rgb newblue2 lt 2 lw 2 #spml

set style data histograms
set style histogram cluster gap 1
#set style fill pattern border -1
set offset -0.4,-0.4,0,0
set style fill solid
set boxwidth -1 relative

set title font "Times, 30" offset 0,-1.5

set ylabel "Time (ms)" font "Times,30" offset -1.5
#set xlabel "Benchmark Configuration" font "Times, 30" offset 0,-1
set ytics font "Times, 25"
set xtics font "Times, 30"
set grid ytics

set bmargin 3
set lmargin 10

dx = .41
dy = 2.3
dy2 = 1.9
dx2 = 0.2
dx3 = .07

#-------------------------------------------------------------------------------------------------------------------------------------

set output 'gcbench.pdf'
set yrange [0:280]
set ytics 0,70,280

set title 'GCbench' 
p 	    'gcbench.data' u ($2/1000):xticlabels(1) notitle ls 1 fs pattern 4, '' u ($0-.35):($2):(sprintf("%3.2f",$2)) with labels font "Times Bold,18" offset -1.2,dy tc rgb 'black' rotate by 90 right notitle,\
	    '' u ($3) ls 3 notitle fs pattern 4,\
	    '' u ($4) ls 2 notitle fs pattern 4, '' u ($0-.15):($4):(sprintf("%3.2f",$4)) with labels font "Times Bold,18" offset -1.1,dy tc rgb 'black' rotate by 90 right notitle,\
	    '' u ($5) ls 1 notitle,\
	    '' u ($6) ls 3 notitle,\
	    '' u ($7) ls 2 notitle,\
	    '' u ($8) ls 1 notitle fill pattern 2,\
	    '' u ($9) ls 3 notitle fill pattern 2,\
	    '' u ($10) ls 2 notitle fill pattern 2
	
#-------------------------------------------------------------------------------------------------------------------------------------
set output 'pca.pdf'
set yrange [0:50]
set ytics 0,10,50

set title 'pca'

p 'pca.data' u ($2/1000):xticlabels(1) notitle ls 1 fs pattern 4, '' u ($0-dx):($2/1000):(sprintf("%3.2f",$2/1000)) with labels font "Times Bold,18" offset 0,dy tc rgb 'black' rotate by 90 right notitle,\
	    '' u ($3/1000) ls 3 notitle fs pattern 4,\
	    '' u ($4/1000) ls 2 notitle fs pattern 4, '' u ($0-dx2):($4/1000):(sprintf("%3.2f",$4/1000)) with labels font "Times Bold,18" offset -.15,dy tc rgb 'black' rotate by 90 right notitle,\
	    '' u ($5/1000) ls 1 notitle,\
	    '' u ($6/1000) ls 3 notitle,\
	    '' u ($7/1000) ls 2 notitle,\
	    '' u ($8/1000) ls 1 notitle fill pattern 2,\
	    '' u ($9/1000) ls 3 notitle fill pattern 2,\
	    '' u ($10/1000) ls 2 notitle fill pattern 2

#-------------------------------------------------------------------------------------------------------------------------------------

set output 'kmeans.pdf'
set yrange [0:60]
set ytics 0,10,60

set title 'kmeans'

p 'kmeans.data' u ($2/1000):xticlabels(1) notitle ls 1 fs pattern 4, '' u ($0-dx):($2/1000):(sprintf("%3.2f",$2/1000)) with labels font "Times Bold,18" offset 0,dy tc rgb 'black' rotate by 90 right  notitle,\
	    '' u ($3/1000) ls 3 notitle fs pattern 4,\
	    '' u ($4/1000) ls 2 notitle fs pattern 4, '' u ($0-dx2):($4/1000):(sprintf("%3.2f",$4/1000)) with labels font "Times Bold,18" offset -.15,dy tc rgb 'black' rotate by 90 right  notitle,\
	    '' u ($5/1000) ls 1 notitle,\
	    '' u ($6/1000) ls 3 notitle,\
	    '' u ($7/1000) ls 2 notitle,\
	    '' u ($8/1000) ls 1 notitle fill pattern 2,\
	    '' u ($9/1000) ls 3 notitle fill pattern 2,\
	    '' u ($10/1000) ls 2 notitle fill pattern 2

#-------------------------------------------------------------------------------------------------------------------------------------
set output 'string-match.pdf'
set yrange [0:50]

set title 'string-match'

p 'string_match.data' u ($2/1000):xticlabels(1) notitle ls 1 fs pattern 4, '' u ($0-dx):($2/1000):(sprintf("%3.2f",$2/1000)) with labels font "Times Bold,18" offset 0,dy tc rgb 'black' rotate by 90 right  notitle,\
	    '' u ($3/1000) ls 3 notitle fs pattern 4,\
	    '' u ($4/1000) ls 2 notitle fs pattern 4, '' u ($0-dx2):($4/1000):(sprintf("%3.2f",$4/1000)) with labels font "Times Bold,18" offset -.1,dy tc rgb 'black' rotate by 90 right  notitle,\
	    '' u ($5/1000) ls 1 notitle,\
	    '' u ($6/1000) ls 3 notitle,\
	    '' u ($7/1000) ls 2 notitle,\
	    '' u ($8/1000) ls 1 notitle fill pattern 2,\
	    '' u ($9/1000) ls 3 notitle fill pattern 2,\
	    '' u ($10/1000) ls 2 notitle fill pattern 2

#-------------------------------------------------------------------------------------------------------------------------------------

set output 'histogram.pdf'
set yrange [0:250]
set ytics 0,50,250

set title 'histogram'

p 'histogram.data' u ($2/1000):xticlabels(1) notitle ls 1 fs pattern 4, '' u ($0-dx):($2/1000):(sprintf("%3.2f",$2/1000)) with labels font "Times Bold,18" offset 0,dy tc rgb 'black' rotate by 90 right  notitle,\
	    '' u ($3/1000) ls 3 notitle fs pattern 4,\
	    '' u ($4/1000) ls 2 notitle fs pattern 4, '' u ($0-dx2):($4/1000):(sprintf("%3.2f",$4/1000)) with labels font "Times Bold,18" offset -.2,dy tc rgb 'black' rotate by 90 right notitle,\
	    '' u ($5/1000) ls 1 notitle,\
	    '' u ($6/1000) ls 3 notitle,\
	    '' u ($7/1000) ls 2 notitle,\
	    '' u ($8/1000) ls 1 notitle fill pattern 2,\
	    '' u ($9/1000) ls 3 notitle fill pattern 2,\
	    '' u ($10/1000) ls 2 notitle fill pattern 2

#-------------------------------------------------------------------------------------------------------------------------------------

set output 'word-count.pdf'
set yrange [0:60]
set ytics 0,10,60

set title 'word-count'

p 'word_count.data' u ($2/1000):xticlabels(1) notitle ls 1 fs pattern 4, '' u ($0-dx):($2/1000):(sprintf("%3.2f",$2/1000)) with labels font "Times Bold,18" offset 0,dy tc rgb 'black' rotate by 90 right  notitle,\
	    '' u ($3/1000) ls 3 notitle fs pattern 4,\
	    '' u ($4/1000) ls 2 notitle fs pattern 4, '' u ($0-dx2):($4/1000):(sprintf("%3.2f",$4/1000)) with labels font "Times Bold,18" offset -.1,dy tc rgb 'black' rotate by 90 right notitle,\
	    '' u ($5/1000) ls 1 notitle,\
	    '' u ($6/1000) ls 3 notitle,\
	    '' u ($7/1000) ls 2 notitle,\
	    '' u ($8/1000) ls 1 notitle fill pattern 2,\
	    '' u ($9/1000) ls 3 notitle fill pattern 2,\
	    '' u ($10/1000) ls 2 notitle fill pattern 2

#-------------------------------------------------------------------------------------------------------------------------------------
#set key Left tmargin reverse maxrows 3 samplen 1.2 width 1 box font "Times,16"

set output 'matrix-mul.pdf'
set yrange [0:50]
set ytics 0,10,50

set title 'matrix-mutltiply'

p 'matrix_mul.data' u ($2/1000):xticlabels(1) notitle ls 1 fs pattern 4, '' u ($0-dx):($2/1000):(sprintf("%3.2f",$2/1000)) with labels font "Times Bold,18" offset 0,dy tc rgb 'black' rotate by 90 right notitle,\
	    '' u ($3/1000) ls 3 notitle fs pattern 4,\
	    '' u ($4/1000) ls 2 notitle fs pattern 4, '' u ($0-dx2):($4/1000):(sprintf("%3.2f",$4/1000)) with labels font "Times Bold,18" offset -.15,dy tc rgb 'black' rotate by 90 right notitle,\
	    '' u ($5/1000) ls 1 notitle,\
	    '' u ($6/1000) ls 3 notitle,\
	    '' u ($7/1000) ls 2 notitle,\
	    '' u ($8/1000) ls 1 notitle fill pattern 2,\
	    '' u ($9/1000) ls 3 notitle fill pattern 2,\
	    '' u ($10/1000) ls 2 notitle fill pattern 2


#p 'matrix_mul.data' u ($2/1000):xticlabels(1) t 'FC Boehm-/proc' ls 1 fs pattern 4, '' u ($0-dx):($2/1000):(sprintf("%3.2f",$2/1000)) with labels font "Times Bold,18" #offset 0,dy tc rgb 'black' rotate by 90 right notitle,\
#	    '' u ($3/1000) ls 3 t 'FC Boehm-SPML' fs pattern 4,\
#	    '' u ($4/1000) ls 2 t 'FC Boehm-EPML' fs pattern 4, '' u ($0-dx2):($4/1000):(sprintf("%3.2f",$4/1000)) with labels font "Times Bold,18" offset -.15,dy tc #rgb 'black' rotate by 90 right notitle,\
#	    '' u ($5/1000) ls 1 t 'IC Boehm-/proc',\
#	    '' u ($6/1000) ls 3 t 'IC Boehm-SPML',\
#	    '' u ($7/1000) ls 2 t 'IC Boehm-EPML',\
#	    '' u ($8/1000) ls 1 t 'CG Boehm-/proc' fill pattern 2,\
#	    '' u ($9/1000) ls 3 t 'CG Boehm-SPML' fill pattern 2,\
#	    '' u ($10/1000) ls 2 t 'CG Boehm-EPML' fill pattern 2
