cask "neardrop" do
  version "2.0.1"
  sha256 "560c15a9179d57dbecbad514734431e1cb3d98f48d1f4d3d3694bc7dd89c382b"

  url "https://github.com/grishka/NearDrop/releases/download/v#{version}/NearDrop.app.zip"
  name "NearDrop"
  desc "Unofficial Google Nearby Share app"
  homepage "https://github.com/grishka/NearDrop/"

  depends_on macos: ">= :big_sur"

  app "NearDrop.app"

  uninstall quit: "me.grishka.NearDrop"

  zap trash: [
    "~/Library/Application Scripts/me.grishka.NearDrop",
    "~/Library/Application Scripts/me.grishka.NearDrop.ShareExtension",
    "~/Library/Containers/me.grishka.NearDrop",
    "~/Library/Containers/me.grishka.NearDrop.ShareExtension",
  ]
end
