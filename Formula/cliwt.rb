class Cliwt < Formula
  desc "Cute terminal waifu tamagotchi for you"
  homepage "https://github.com/HenryLoM/CliWaifuTamagotchi"
  url "https://github.com/HenryLoM/CliWaifuTamagotchi/releases/download/v1.0.0/cliwt-v1.0.0.tar.gz"
  sha256 "589175e2a46a00d85a4bf2811ae5aed54ad25e5241cd2c7e6a006eede48e8d5b"
  version "1.0.0"

  def install
    # Install binary and rename it to avoid conflict with wrapper
    bin.install "cliwt" => "cliwt.real"

    # Install asset directories
    prefix.install "assets", "ascii-arts", "utils"

    # Wrapper script to run binary from the prefix directory
    (bin/"cliwt").write <<~EOS
      #!/bin/bash
      cd "#{prefix}" || exit 1
      exec "#{bin}/cliwt.real" "$@"
    EOS
  end

  test do
    system "#{bin}/cliwt", "--help"
  end
end
