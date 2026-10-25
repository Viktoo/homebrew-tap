# Written by scripts/homebrew-formula.sh in Viktoo/infinite-pocket on each release.
class Pocket < Formula
  desc "Infinite 3D world written by an AI while you walk through it"
  homepage "https://github.com/Viktoo/infinite-pocket"
  url "https://github.com/Viktoo/infinite-pocket/releases/download/v0.3.0/pocket-0.3.0-macos-arm64.tar.gz"
  version "0.3.0"
  sha256 "a2b8ee5eeadd19f085db2098237af2943bc4a53791f57f6e2f2e54289897fe38"

  bottle do
    root_url "https://github.com/Viktoo/infinite-pocket/releases/download/v0.3.0"
    sha256 cellar: :any_skip_relocation, all: "c55e01417bec5418f8f4a1493a2694b4e58192df33cc09fbc76d360606d88cfe"
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
