cask "astraplay" do
  arch arm: "arm64", intel: "x86_64"

  version "2.12.17"
  sha256 arm:   "1be20e8ef53cd3e0408996c9c771af22038f072bdcaefe90972bec642fdf86ed",
         intel: "74b66160a857de23e0f2213801efe49d5812b4688fa3aa2ee5e3057d6da094cf"

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
