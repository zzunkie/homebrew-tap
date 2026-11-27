cask "yardlet" do
  arch arm: "arm64", intel: "x86_64"

  version "0.11.18"
  sha256 arm:   "762e3632f77775bdafab04e06eab7e37844e299bb24bf68788e3ab0852fc6bc7",
         intel: "5289c286eb4cc86461dd8674a1ac43fb186e22f98e00e863745dbc763d43cb5c"

  url "https://dl.yardlet.app/homebrew/#{arch}/#{version}"
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
