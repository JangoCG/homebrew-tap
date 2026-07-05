cask "polaris" do
  version "0.15.0"
  sha256 "cfc670467057de4d446956329d9fe9e402d3000f48cc989d799d6088494604ec"

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
