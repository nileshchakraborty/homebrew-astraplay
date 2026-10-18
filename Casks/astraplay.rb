cask "astraplay" do
  arch arm: "arm64", intel: "x86_64"

  version "2.12.16"
  sha256 arm:   "bd3f4da1e5538a83f520f8632b7d3cd21b41feb04d0de110bc8960e581cb00b5",
         intel: "2f0d5e36a6a77f0faff00cdbc767067ddc852b416f35025aa6b93e64995f8aef"

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
