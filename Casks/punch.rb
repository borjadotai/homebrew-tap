cask "punch" do
  version "1.1"
  sha256 "c282e8a8e5665a48425f585ab66ddd29f1c6424601350c478f70976bfe442069"

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
