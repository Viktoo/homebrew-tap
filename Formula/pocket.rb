# Written by scripts/homebrew-formula.sh in Viktoo/infinite-pocket on each release.
class Pocket < Formula
  desc "Infinite 3D world written by an AI while you walk through it"
  homepage "https://github.com/Viktoo/infinite-pocket"
  url "https://github.com/Viktoo/infinite-pocket/releases/download/v0.2.0/pocket-0.2.0-macos-arm64.tar.gz"
  version "0.2.0"
  sha256 "19ff58ae9fd4b51172fe57f5946ea2dc340e3a4b6fa9527d42b3ea5457b8598f"

  bottle do
    root_url "https://github.com/Viktoo/infinite-pocket/releases/download/v0.2.0"
    sha256 cellar: :any_skip_relocation, all: "77408077ba85872c2162322c3679c8ec905529be706e2a917355138409708047"
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
