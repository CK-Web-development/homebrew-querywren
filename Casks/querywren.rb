cask "querywren" do
  version "1.0.2"
  sha256 "882a78517b341a9f703e62522ba9ef91d7231defb21b09436c8fa735205567ee"

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
