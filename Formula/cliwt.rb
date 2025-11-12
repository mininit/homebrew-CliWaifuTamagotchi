class Cliwaifutamagotchi < Formula
  desc "CLI ASCII avatar for entertainment and motivational purposes"
  homepage "https://github.com/HenryLoM/CliWaifuTamagotchi"
  url "https://github.com/HenryLoM/CliWaifuTamagotchi/releases/download/v1.0.0/cliwt-v1.0.0.tar.gz"
  sha256 "43da259b0fe512da194f3fc7882757e3780991eddf4529fcbed98b3b235a7a72"
  version "1.0.0"

  def install
    # Install the binary
    bin.install "cliwt"

    # Install all folders and remaining files to prefix
    prefix.install Dir["*"].select { |f| f != "cliwt" }
  end
end
