cask "punch" do
  version "1.0"
  sha256 "2b6df6f13dc7e151809f3ea6149f780a3fe0a4eb65f3fb690b29badc91dd7538"

  url "https://github.com/borjadotai/punch/releases/download/v#{version}/PunchApp-#{version}.zip"
  name "Punch"
  desc "Privacy-first meeting intelligence — auto-record, transcribe, and summarise"
  homepage "https://github.com/borjadotai/punch"

  depends_on macos: ">= :sonoma"

  app "PunchApp.app"

  caveats <<~EOS
    Punch is not notarized. On first launch, macOS will block it.
    To allow it, right-click the app → Open → Open.
    Or run: xattr -cr /Applications/PunchApp.app
  EOS
end
