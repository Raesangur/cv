project := cv
flags := --no-shell-escape -jobname=${project}

# https://stackoverflow.com/a/4511164
ifdef OS
   RM = cmd /C del /Q
   FixPath = $(subst /,\,$1)

   SHELL := powershell.exe
   EDIT_CMD = powershell -Command
endif

build:
	pdflatex ${flags} ${project}.tex

clean:
	$(RM) $(call FixPath, *.aux)
	$(RM) $(call FixPath, *.auxlock)
	$(RM) $(call FixPath, chapters/*.aux)
	$(RM) $(call FixPath, *.bak)
	$(RM) $(call FixPath, *.bbl*)
	$(RM) $(call FixPath, *.bcf*)
	$(RM) $(call FixPath, *.blg*)
	$(RM) $(call FixPath, *.dpth)
	$(RM) $(call FixPath, *.fdb_*)
	$(RM) $(call FixPath, *.fls)
	$(RM) $(call FixPath, *.hd*)
	$(RM) $(call FixPath, *.lof)
	$(RM) $(call FixPath, *.log)
	$(RM) $(call FixPath, *.lol)
	$(RM) $(call FixPath, *.lot)
	$(RM) $(call FixPath, *.nav)
	$(RM) $(call FixPath, *.md5)
	$(RM) $(call FixPath, *.out)
	$(RM) $(call FixPath, *.ptc)
	$(RM) $(call FixPath, *.snm)
	$(RM) $(call FixPath, *.synctex*)
	$(RM) $(call FixPath, *.toc)
	$(RM) $(call FixPath, *.run.xml)
