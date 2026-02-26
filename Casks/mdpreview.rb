cask "mdpreview" do
  version "1.2.1"
  sha256 "e438b4e0fd2a411ad09811b969dcee52318dfb7ddd89f0047cc7d3508a994352"

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
    "~/Library/Application Support/com.mdpreview.app",
    "~/Library/Caches/com.mdpreview.app",
    "~/Library/HTTPStorages/com.mdpreview.app",
    "~/Library/Preferences/com.mdpreview.app.plist",
  ]
end
