xcrun xcodebuild docbuild \
    -scheme GoodPersistence \
    -destination 'generic/platform=iOS Simulator' \
    -derivedDataPath "$PWD/.derivedData"

xcrun docc process-archive transform-for-static-hosting \
    "$PWD/.derivedData/Build/Products/Debug-iphonesimulator/GoodPersistence.doccarchive" \
    --output-path ".docs" \
    --hosting-base-path "doccAutomatization_iOS" # add your repo name later

echo '<script>window.location.href += "/documentation/givenwithlove"</script>' > .docs/index.html
