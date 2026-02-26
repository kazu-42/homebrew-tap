cask "mdpreview" do
  version "1.2.4"
  sha256 "544072aad25f7d73e1b97388b2ecad0e4b9fd0c932b52af2e55026ed181eb808"

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
