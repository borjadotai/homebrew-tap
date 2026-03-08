cask "claudeusage" do
  version "1.0"
  sha256 "473ae2567726067aab085be0cde5b857e6cbd5d0ec7db4442ca2c81a04d5348d"

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
