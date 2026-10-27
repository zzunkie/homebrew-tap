cask "yardlet" do
  version "0.11.1"
  sha256 "06faf7b1707d9ef43ffeda021c9c414afbf9c0d03b79cf6fbd1f1d34971f9f3f"

  url "https://github.com/zzunkie/yardlet/releases/download/v#{version}/Yardlet-#{version}.dmg"
  name "Yardlet"
  desc "Native app for running coding agents side by side"
  homepage "https://yardlet.app/"

  livecheck do
    url "https://yardlet.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Yardlet.app"

  zap trash: [
    "~/.yardlet",
    "~/Library/Application Support/Yardlet",
    "~/Library/Caches/com.zzunkie.yardlet",
    "~/Library/HTTPStorages/com.zzunkie.yardlet",
    "~/Library/Preferences/com.zzunkie.yardlet.plist",
    "~/Library/Saved Application State/com.zzunkie.yardlet.savedState",
  ]
end
