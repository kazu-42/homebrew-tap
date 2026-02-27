cask "mdpreview" do
  version "1.4.1"
  sha256 "8a19aa4fc74f74cd71b5529579668e16147f7a50ab94a2aa15f64de56fafa019"

  url "https://github.com/kazu-42/mdpreview/releases/download/v#{version}/MDPreview.dmg"
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
