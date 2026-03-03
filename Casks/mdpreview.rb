cask "mdpreview" do
  version "1.5.2"
  sha256 "4f7a169ea79efd3319710c20f27f816552a96f24e12dc5113bc0c9a9cc169068"

  url "https://github.com/kazu-42/mdpreview/releases/download/v#{version}/MDPreview-v#{version}.dmg"
  name "MDPreview"
  desc "Lightweight Markdown preview app for macOS"
  homepage "https://github.com/kazu-42/mdpreview"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "MDPreview.app"

  binary "#{appdir}/MDPreview.app/Contents/Resources/mdpreview"

  zap trash: [
    "~/Library/Caches/MDPreview",
    "~/Library/Containers/dev.kazu42.mdpreview",
    "~/Library/Preferences/dev.kazu42.mdpreview.plist",
  ]
end
