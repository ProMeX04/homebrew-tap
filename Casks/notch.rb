cask "notch" do
  version "0.1.0"
  sha256 "df83d4903c04ef7bb7990b8871f3837f99cdb99a19c0eadd8a6aeeaded581064"

  url "https://github.com/ProMeX04/notch-releases/releases/download/v#{version}/Notch-#{version}.zip"
  name "Notch"
  desc "Lightweight notch utility for macOS — music, focus tools, and Gemini Live"
  homepage "https://github.com/ProMeX04/notch-releases"

  depends_on macos: ">= :sonoma"

  app "Notch.app"

  zap trash: [
    "~/Library/LaunchAgents/dev.notch.plist",
    "~/Library/Preferences/dev.notch.plist",
  ]
end
