.PHONY: build
build:
	rm -rf build
	mkdir -p build/zip
	cp -r manifest.json content-scripts icons vendor build/zip
	# zip for chrome
	# replace manifest version for firefox
	# zip for firefox
	cd build/zip && \
	zip -r ../vrt-design-extension-chrome.zip manifest.json content-scripts icons vendor && \
	sed -i 's/\"manifest_version\": 3/\"manifest_version\": 2/g' manifest.json && \
	zip -r ../vrt-design-extension-fixfox.zip manifest.json content-scripts icons vendor
