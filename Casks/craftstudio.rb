cask 'craftstudio' do
  version :latest
  sha256 :no_check

  # craftstud.io/files/OSX was verified as official when first introduced to the cask
  url 'http://craftstud.io/files/OSX/CraftStudio.pkg'
  name 'CraftStudio'
  homepage 'https://sparklinlabs.itch.io/craftstudio'

  depends_on cask: 'mono-mdk'

  pkg 'CraftStudio.pkg'

  uninstall quit:    'com.sparklinlabs.CraftStudioLauncher',
            pkgutil: 'com.sparklinlabs.CraftStudioLauncher'

  zap trash: '~/Library/CraftStudio'
end
