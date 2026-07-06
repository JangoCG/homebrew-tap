cask "polaris" do
  version "0.15.1"
  sha256 "89b493db736d5296b4932dd7dba5525e9501cb041ac308979a1f50cb432f30b7"

  url "https://github.com/JangoCG/polaris-releases/releases/download/v#{version}/polaris.dmg",
      verified: "github.com/JangoCG/polaris-releases/"
  name "Polaris"
  desc "Native GUI for Kamal deployments"
  homepage "https://polaris-deploy.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Polaris.app"

  zap trash: [
    "~/Library/Application Support/Polaris",
    "~/Library/Caches/com.cengizg.polaris",
    "~/Library/HTTPStorages/com.cengizg.polaris",
    "~/Library/Preferences/com.cengizg.polaris.plist",
    "~/Library/Saved Application State/com.cengizg.polaris.savedState",
  ]
end
