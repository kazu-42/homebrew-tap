cask "mdpreview" do
  version "1.5.1"
  sha256 "fd4237212812c3e308bdbd0bb67989bbb36448e59ae2cf56badfcb54ae421604"

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
