cask "yardlet" do
  version "0.11.3"
  sha256 "1575d8bfc0110a4cdcb6939ce9edb7cb4b14fa41bfe335e886535a5da08a1a91"

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
