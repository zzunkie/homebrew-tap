cask "yardlet" do
  arch intel: "-x86_64"

  version "0.11.9"
  sha256 arm:   "336c88a97da4c0cea19bad2fcf5848ee125801777f25fbfa0dba1098c24b6935",
         intel: "c68e45c65cd02275c7f913220a07915eaaf9ad84655a6b43e8878136fa479cd2"

  url "https://github.com/zzunkie/yardlet/releases/download/v#{version}/Yardlet-#{version}#{arch}.dmg"
  name "Yardlet"
  desc "Native app for running coding agents side by side"
  homepage "https://yardlet.app/"

  livecheck do
    url "https://yardlet.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
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
