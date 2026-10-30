cask "yardlet" do
  version "0.11.5"
  sha256 "e392a5cafd2f26d6f21ad2d67f597f101820665c3410b7e12cb8494ccfa07972"

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
