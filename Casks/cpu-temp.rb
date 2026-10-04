cask "cpu-temp" do
  version "1.0.0"
  sha256 "0ffdae664620cee194c2a3f9a2a949c9b163d0780e77c1d1a5bff02f676a8482"

  url "https://github.com/jpferreria/mac-cpu-temp/releases/download/v#{version}/cpu-temp-v#{version}.zip"
  name "cpu-temp"
  desc "Lightweight menu bar utility displaying CPU temperature on Apple Silicon"
  homepage "https://github.com/jpferreria/mac-cpu-temp"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "cpu-temp.app"

  uninstall quit: "com.jerry.cpu-temp"

  zap trash: [
    "~/Library/Preferences/com.jerry.cpu-temp.plist",
  ]
end
