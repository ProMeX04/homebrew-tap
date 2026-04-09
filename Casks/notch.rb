cask "notch" do
  version "1.0.2"
  sha256 "43141dc0ac35bf0be04dad8db1fc4c66a5463956d343ce6aaf6879688fc30670"

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
