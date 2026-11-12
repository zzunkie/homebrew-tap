cask "yardlet" do
  arch intel: "-x86_64"

  version "0.11.11"
  sha256 arm:   "24a396e9ccd08960a1fedfc7b9da07c2e7f4843b4e49cfaeb95a6dd0c3e4262a",
         intel: "b454320661753deac2ac1e46542952c5ef9ede41938d4365cd3eea192e78829d"

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
