cask "neardrop" do
  version "2.0.0"
  sha256 "066f1b3ca30a25732bea2561b20fee27e9f0a78c720f7ba30e8e7e1af5ba41be"

  url "https://github.com/grishka/NearDrop/releases/download/v#{version}/NearDrop.app.zip"
  name "NearDrop"
  desc "Unofficial Google Nearby Share app"
  homepage "https://github.com/grishka/NearDrop/"

  depends_on macos: ">= :big_sur"

  app "NearDrop.app"

  uninstall quit: "me.grishka.NearDrop"

  zap trash: [
    "~/Library/Application Scripts/me.grishka.NearDrop",
    "~/Library/Containers/me.grishka.NearDrop",
  ]
end
