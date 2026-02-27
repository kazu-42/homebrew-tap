cask "mdpreview" do
  version "1.2.9"
  sha256 "41706e323c6f55e44402a85c385c1053e52e855ed28123b16ed3f8aafa5dbdab"

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
