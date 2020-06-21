TEX=sportowa_mlynarczykm
gadd:
	git add -A
	git status
gcom:
	git commit
	git push -vu --progress origin master
pdf:
	rubber -d ${TEX}
	mupdf ${TEX}.pdf
	make clean
clean:
	rubber --clean ${TEX}

