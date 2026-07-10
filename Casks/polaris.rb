cask "polaris" do
  version "0.15.2"
  sha256 "7147e64f6705e59c23c555acb5cd85178573b0e30e84490d9430e40cff98e93d"

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
