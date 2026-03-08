cask "claudeusage" do
  version "1.1"
  sha256 "56b5ec0763a2815505d4bbeeee3444b6b882c6602b999d5a69c984185bfed0f4"

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
