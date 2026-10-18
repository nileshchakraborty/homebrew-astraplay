cask "astraplay" do
  arch arm: "arm64", intel: "x86_64"

  version "2.12.18"
  sha256 arm:   "d55d2aae17b58309f897d2721f9bb1025edb15b66b64b771ba3c7f6b4cc84bb6",
         intel: "42b282a76d45d85829b935db1eb8315322c53379c8575858deaee5433e54b9eb"

  url "https://github.com/nileshchakraborty/AstraPlay/releases/download/v#{version}/AstraPlay-macOS-#{arch}.dmg"
  name "AstraPlay"
  desc "PlayStation remote play and cloud streaming client"
  homepage "https://github.com/nileshchakraborty/AstraPlay"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "AstraPlay.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-d", "com.apple.quarantine", "{{appdir}}/AstraPlay.app"], must_succeed: false
  end

  zap trash: [
    "~/Library/Application Support/AstraPlay",
    "~/Library/Application Support/astraplay",
    "~/Library/Preferences/astraplay.plist",
    "~/Library/Preferences/io.github.nileshchakraborty.astraplay.plist",
    "~/Library/Saved Application State/io.github.nileshchakraborty.astraplay.savedState",
  ]
end
