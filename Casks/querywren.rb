cask "querywren" do
  version "1.0.3"
  sha256 "f83bfdbb0b317e87e820f2663cf938f121d43f8540855fc5546f9b5e71affe22"

  url "https://querywren.nl/download/#{version}/Querywren.dmg"
  name "Querywren"
  desc "Native macOS database workspace for MySQL, PostgreSQL, and SQLite"
  homepage "https://querywren.nl"

  livecheck do
    url "https://querywren.nl/api/latest-release"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Querywren.app"

  uninstall quit: "com.querywren.app"

  zap trash: [
    "~/Library/Application Support/Querywren",
    "~/Library/Caches/com.querywren.app",
    "~/Library/Preferences/com.querywren.app.plist",
    "~/Library/Saved Application State/com.querywren.app.savedState",
  ]
end
