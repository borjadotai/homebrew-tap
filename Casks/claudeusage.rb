cask "claudeusage" do
  version "1.0"
  sha256 "9505bcdbc186350736d31006b2bbe0a62b52055802c7499f96b9b4649385953f"

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
