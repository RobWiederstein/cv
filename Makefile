all: cv/cv.pdf cv/pic.jpg

clean:
	rm -rf cv/pic.jpg cv/cv.pdf cv/*.sty cv/*.cls cv/cv.tex cv/cv.log cv/fonts cv/cv.aux

cv/pic.jpg: R/plot_zachary.R
	Rscript -e 'source("./R/plot_zachary.R")'

cv/cv.pdf: cv/cv.Rmd
	Rscript -e 'rmarkdown::render("./cv/cv.Rmd")'
	cp cv/cv.pdf docs
