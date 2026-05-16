cask "notch" do
  version "1.0.10"
  sha256 "57eefd2435cf8966934d467297076055b5daba1b97dafacfe92b856d5114916f"

  url "https://github.com/ProMeX04/notch-releases/releases/download/v#{version}/Notch-#{version}.zip"
  name "Notch"
  desc "Lightweight notch utility for macOS — music, focus tools, and Gemini Live"
  homepage "https://github.com/ProMeX04/notch-releases"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Notch.app"

  caveats <<~EOS
    Notch is currently distributed ad-hoc signed (not notarized).
    If macOS opens it with no visible UI or blocks it, run:

      xattr -dr com.apple.quarantine /Applications/Notch.app
      open -a Notch

    Notch runs as a menu bar / notch utility, so it may not show a Dock icon.
  EOS

  zap trash: [
    "~/Library/LaunchAgents/dev.notch.plist",
    "~/Library/Preferences/dev.notch.plist",
  ]
end
