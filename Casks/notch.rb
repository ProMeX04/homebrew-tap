cask "notch" do
  version "1.0.4"
  sha256 "b9f09d5cea3c97a3c314c619e4fb9c5e73986b88ef11230104762e012b6190bc"

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
