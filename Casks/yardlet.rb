cask "yardlet" do
  version "0.11.0"
  sha256 "3b07ba32996324eb40c87020be3b0d4c3836bec2ca424d9c1ed56a8acdbaa944"

  url "https://github.com/zzunkie/yardlet/releases/download/v#{version}/Yardlet-#{version}.dmg",
      verified: "github.com/zzunkie/yardlet/"
  name "Yardlet"
  desc "Native app for running coding agents side by side"
  homepage "https://yardlet.app/"

  livecheck do
    url "https://yardlet.app/appcast.xml"
    strategy :sparkle
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
