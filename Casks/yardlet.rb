cask "yardlet" do
  arch arm: "arm64", intel: "x86_64"

  version "0.11.17"
  sha256 arm:   "0d1bdcc75f7f29414e375c3735f2aeeb93e4b0ba4dd8c26f68fdd8c81049f467",
         intel: "8235835605f76d6692e2937cec5ca4189804fe61fc315c8f3ebae96fbb1dc774"

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
