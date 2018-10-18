ifdef SystemRoot
	RM = del /Q /F
else
   ifeq ($(shell uname), Linux)
      RM = rm -f
   endif
endif

package:
	cpack package/elasticsearch.nuspec

install:
	cinst -y elasticsearch -source '.;chocolatey'

uninstall:
	cuninst -y elasticsearch

clean:
	$(RM) *.nupkg

.PHONY: package install uninstall clean
