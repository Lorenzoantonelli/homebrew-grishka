cask "neardrop" do
  version "2.0.3"
  sha256 "1622e64b8df4b2a523c90c68d85218f3a4bb826e4faba47bd60ecb3ffb75776d"

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
