# Written by scripts/homebrew-formula.sh in Viktoo/infinite-pocket on each release.
class Pocket < Formula
  desc "Infinite 3D world written by an AI while you walk through it"
  homepage "https://github.com/Viktoo/infinite-pocket"
  url "https://github.com/Viktoo/infinite-pocket/releases/download/v0.4.0/pocket-0.4.0-macos-arm64.tar.gz"
  version "0.4.0"
  sha256 "f06a9e728bb8b826c165437a3f83b13d8ab18130cb9822eb7bb46cb49de0e1a2"

  bottle do
    root_url "https://github.com/Viktoo/infinite-pocket/releases/download/v0.4.0"
    sha256 cellar: :any_skip_relocation, all: "856c80e1ba5514d3b2c9e4bc00e7ecf36cf2ad28f5ef905fec5a38503676bad6"
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "pocket"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pocket version")
  end
end
