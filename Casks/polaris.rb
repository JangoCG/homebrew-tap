cask "polaris" do
  version "0.14.0"
  sha256 "cc1e2d123edec2dba7bb8e812b14eb19c41bcb710416def13952e6e885f8a784"

  url "https://github.com/JangoCG/polaris-releases/releases/download/v#{version}/polaris.dmg"
  name "Polaris"
  desc "Native macOS GUI for Kamal deployments"
  homepage "https://polaris-deploy.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Polaris.app"

  zap trash: [
    "~/Library/Application Support/Polaris",
    "~/Library/Caches/com.cengizg.polaris",
    "~/Library/HTTPStorages/com.cengizg.polaris",
    "~/Library/Preferences/com.cengizg.polaris.plist",
    "~/Library/Saved Application State/com.cengizg.polaris.savedState",
  ]
end
