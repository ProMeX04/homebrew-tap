cask "notch" do
  version "1.0.17"
  sha256 "dc3d252247b74deeb53a4538b498f1fb6e5150bc826333bcc178f488bcb53707"

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
