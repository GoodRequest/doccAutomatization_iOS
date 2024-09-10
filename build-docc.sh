xcode-select -s /Applications/Xcode_15.0.app
xcrun xcodebuild docbuild \
    -scheme GoodPersistence \
    -destination 'generic/platform=iOS Simulator' \
    -derivedDataPath "$PWD/.derivedData"

xcrun docc process-archive transform-for-static-hosting \
    "$PWD/.derivedData/Build/Products/Debug-iphonesimulator/GoodPersistence.doccarchive" \
    --output-path ".docs" \
    --hosting-base-path "" # add your repo name later
