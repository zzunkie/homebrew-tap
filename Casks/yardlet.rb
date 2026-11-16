cask "yardlet" do
  arch intel: "-x86_64"

  version "0.11.12"
  sha256 arm:   "0356092c775d845981eb00663239adfd2091ce024f653641add6032f8d29bb2b",
         intel: "df9a7dac7e874fa7bbcfb042a4d0c5143f9fe21556664285d290eb378a0a27d2"

  url "https://github.com/zzunkie/yardlet/releases/download/v#{version}/Yardlet-#{version}#{arch}.dmg"
  name "Yardlet"
  desc "Lightweight, non-intrusive, yet versatile ADE for Claude Code and Codex"
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
