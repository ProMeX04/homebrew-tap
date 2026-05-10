cask "notch" do
  version "1.0.5"
  sha256 "7d7a4b66d0e73a85896926b82ff0e29a13631f2a95d354b6701c542e40591ead"

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
