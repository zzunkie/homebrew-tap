cask "yardlet" do
  arch intel: "-x86_64"

  version "0.11.10"
  sha256 arm:   "656c30aa340f3254fb483d6bb4140de559161091a1df56b23498692bdd497768",
         intel: "34bc4e87a83f6b6eef6f2a90cf78a19a76bbda93b8f48e67bab9686159724540"

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
