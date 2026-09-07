cask "polaris" do
  version "0.15.5"
  sha256 "ce43fd576fb83a1324fe409586f442fe982a3396db0a478c78f7ef7300547b4a"

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
