cask "mdpreview" do
  version "1.2.5"
  sha256 "290bedfc9b86e6d0af191e41805b5ac2b64a452857aeff19861bbb11770bc2ba"

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
    "~/Library/Application Support/com.mdpreview.app",
    "~/Library/Caches/com.mdpreview.app",
    "~/Library/HTTPStorages/com.mdpreview.app",
    "~/Library/Preferences/com.mdpreview.app.plist",
  ]
end
