cask "notch" do
  version "1.0.34"
  sha256 "b8a6de72f7ca896db5ef6de4a78ecaf970c8580e49bfea3ba3cf837343ab8efc"

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
