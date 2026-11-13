cask "querywren" do
  version "1.2.1"
  sha256 "f64cdc5bff83c5f50ab7f6e4d69a1770bf7123578b38dafa5b150f4e37d3cb0a"

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
