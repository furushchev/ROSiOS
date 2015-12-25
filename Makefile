test:
	xcodebuild \
	-sdk $(TRAVIS_XCODE_SDK) \
	-workspace $(TRAVIS_XCODE_WORKSPACE) \
	-scheme $(TRAVIS_XCODE_SCHEME) \
	-configuration Release \
	-destination "$(TRAVIS_XCODE_DESTINATION)" \
	clean build \
	ONLY_ACTIVE_ARCH=NO 1> $(TRAVIS_BUILD_DIR)/$(BUILD_LOG) 2>&1
