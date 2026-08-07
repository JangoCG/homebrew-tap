cask "polaris" do
  version "0.15.4"
  sha256 "ebcc2211f79fe14f9a30260422866663258b640376f6958533f1cb939e56c710"

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
