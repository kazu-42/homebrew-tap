cask "mdpreview" do
  version "1.3.0"
  sha256 "e87827d6976fd5a075b1ea24c27ebbec957b60645c94b39e1cfa36938959375b"

  url "https://github.com/kazu-42/mdpreview/releases/download/v#{version}/MDPreview-#{version}.dmg"
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
