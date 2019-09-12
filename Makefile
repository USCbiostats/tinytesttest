build:
	cd .. && R CMD build tinytesttest
check:
	$(MAKE) build && R CMD check ../tinytesttest_*tar.gz
