class Cliwt < Formula
  desc "Cute terminal waifu tamagotchi for you"
  homepage "https://github.com/HenryLoM/CliWaifuTamagotchi"
  url "https://github.com/HenryLoM/CliWaifuTamagotchi/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "589175e2a46a00d85a4bf2811ae5aed54ad25e5241cd2c7e6a006eede48e8d5b"
  license "GPL-3.0-only"

  head "https://github.com/HenryLoM/CliWaifuTamagotchi.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end
end
