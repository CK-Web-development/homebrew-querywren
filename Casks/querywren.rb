cask "querywren" do
  version "1.0.1"
  sha256 "e244013eeee7b64b4efb58ec2b6a0faec9127fc6b17973a6b4e81754464116a5"

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
