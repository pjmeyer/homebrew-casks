cask "espanso@2.2.3" do
  version "2.2.3"
  sha256 "20bf99264147410a721a4141234d40948d338816d480c7aa6729384edda399d8"

  url "https://github.com/espanso/espanso/releases/download/v#{version}/Espanso-Mac-M1.dmg",
      verified: "github.com/espanso/espanso/"
  name "Espanso"
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://espanso.org/"

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "Espanso.app"
  binary "#{appdir}/Espanso.app/Contents/MacOS/espanso"

  zap trash: [
    "~/Library/Application Support/espanso",
    "~/Library/Caches/espanso",
    "~/Library/LaunchAgents/com.federicoterzi.espanso.plist",
    "~/Library/Preferences/com.federicoterzi.espanso.plist",
    "~/Library/Preferences/espanso",
    "~/Library/Preferences/espanso.plist",
    "~/Library/Saved Application State/com.federicoterzi.espanso.savedState",
  ]
end
