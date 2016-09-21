require 'formula'

class Synergy < Formula
  # Newer 1.3.x versions have a critical bug on OS X:
  # http://code.google.com/p/synergy-plus/issues/detail?id=47
  # Do not bump this to 1.3.7 or newer until that issue is resolved.
  url 'http://synergy.googlecode.com/files/synergy-1.3.6p2-MacOSX-Universal.zip'
  sha256 '8863527a9c7bf101f8ff9fa1b0d8d94096c27aacf04e3fa3107bb8ab92207e40'
  homepage 'http://synergy-foss.org'

  devel do
    url 'http://synergy.googlecode.com/files/synergy-1.4.3-MacOSX106-Universal.zip'
    sha256 '7e748bd7af692afc37ad02788186e4964beaffd9b6f61deb21da6a5987bd1d61'
  end

  def install
    bin.install 'synergyc', 'synergys'
  end
end
