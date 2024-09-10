xcrun xcodebuild docbuild \
    -scheme GoodPersistence \
    -destination 'generic/platform=iOS Simulator' \
    -derivedDataPath "$PWD/.derivedData"


$(xcrun --find docc) process-archive \
transform-for-static-hosting "$PWD/.derivedData/Build/Products/Debug-iphonesimulator/GoodPersistence.doccarchive" \
--output-path ".docs" \
--hosting-base-path "doccAutomatization_iOS"

echo '<script>window.location.href += "/documentation/goodpersistence"</script>' > .docs/index.html
