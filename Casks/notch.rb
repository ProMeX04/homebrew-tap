cask "notch" do
  version "3.0.5"
  sha256 "94d4c6cb8fccecc2a67069906f8bcc53576e2a2e4b8a9ad2dc1b43a748eacf66"

  url "https://github.com/ProMeX04/notch-releases/releases/download/v#{version}/Notch-#{version}.zip"
  name "Notch"
  desc "Lightweight notch utility for macOS — music, focus tools, and Gemini Live"
  homepage "https://github.com/ProMeX04/notch-releases"

  depends_on arch: :arm64
  depends_on macos: :sonoma

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
