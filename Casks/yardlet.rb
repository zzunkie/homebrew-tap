cask "yardlet" do
  arch intel: "-x86_64"

  version "0.11.15"
  sha256 arm:   "abb4f6176184ba02f8aba6233ec94baf9de83d6a1061ebd24084d06d2fc8178b",
         intel: "002c1b31ceb74494205fc6dca0ff3d8a1dddf4a97b610693bc88639395d5e14c"

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
