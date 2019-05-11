cask 'spectral' do
  version '0.0.0.605'
  sha256 '036642555c3ee16d3d7f6f2e6e52c46386e836657cc20379ac51ebd418eb4202'

  # dl.bintray.com/encombhat was verified as official when first introduced to the cask
  url "https://dl.bintray.com/encombhat/Spectral/spectral-#{version}.dmg"
  name 'Spectral'
  homepage 'https://gitlab.com/b0/spectral'

  app 'spectral.app'
end
