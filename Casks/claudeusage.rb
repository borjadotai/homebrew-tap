cask "claudeusage" do
  version "1.0"
  sha256 "9e93ae4ec01db248cc32d22c5d038cddf0ecc08760588f24fdde3d1ba45254af"

  url "https://github.com/borjadotai/claude-usage/releases/download/v#{version}/ClaudeUsage-#{version}.zip"
  name "ClaudeUsage"
  desc "Menu bar app that monitors Claude Pro/Team usage quota"
  homepage "https://github.com/borjadotai/claude-usage"

  depends_on macos: ">= :ventura"

  app "ClaudeUsage.app"

  caveats <<~EOS
    ClaudeUsage is not notarized. On first launch, macOS will block it.
    To allow it, right-click the app → Open → Open.
    Or run: xattr -cr /Applications/ClaudeUsage.app
  EOS
end
