cask "querywren" do
  version "1.3.0"
  sha256 "077b2179b3e7e562d979ed2be9e73ac445dd924fdb61d0da9da106bb1297ec71"

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
