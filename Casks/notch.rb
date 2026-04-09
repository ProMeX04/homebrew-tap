cask "notch" do
  version "1.0.1"
  sha256 "c3dd652c3f44ed3293b46473064a426b63ebdc799863af339cf097d8fdf6c2ae"

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
