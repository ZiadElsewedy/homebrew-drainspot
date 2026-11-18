cask "drainspot" do
  version "1.5.0"
  # The DMG keeps one name per version and the app updates itself through Sparkle,
  # so the checksum is not pinned. The DMG is signed and notarized; Gatekeeper checks it.
  sha256 :no_check

  url "https://drainspot.app/downloads/Drainspot-#{version}.dmg"
  name "Drainspot"
  desc "Battery monitor that shows which apps drain a MacBook battery, and why"
  homepage "https://drainspot.app/"

  livecheck do
    url "https://drainspot.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Drainspot.app"

  # The recorder is a login item registered by the app; only the app can remove it cleanly.
  uninstall early_script: {
              executable:   "#{appdir}/Drainspot.app/Contents/MacOS/Drainspot",
              args:         ["--unregister-agent"],
              must_succeed: false,
            },
            launchctl:    "com.drainspotapp.mac.tracker",
            quit:         "com.drainspotapp.mac"

  zap trash: [
    "~/Library/Application Support/com.drainspotapp.mac",
    "~/Library/Caches/com.drainspotapp.mac",
    "~/Library/Group Containers/7Q3PY75VGH.com.drainspotapp.mac",
    "~/Library/HTTPStorages/com.drainspotapp.mac",
    "~/Library/Preferences/com.drainspotapp.mac.plist",
    "~/Library/Saved Application State/com.drainspotapp.mac.savedState",
  ]
end
