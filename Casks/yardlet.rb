cask "yardlet" do
  arch arm: "arm64", intel: "x86_64"

  version "0.11.19"
  sha256 arm:   "65d53442a79bc1cb58af1395b05ef6cf2bc436ad643c1da5003f9ddb89212ec2",
         intel: "938f4db8b7d7c0316559557b15c858fe6350e5440c2fe2bec424c30680b2bf4b"

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
