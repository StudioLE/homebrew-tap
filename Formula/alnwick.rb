class Alnwick < Formula
  desc "A self hosted podcast library"
  homepage "https://github.com/StudioLE/alnwick"
  license "GPL-3.0-only"
  version "0.3.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/alnwick/releases/download/v0.3.0/alnwick-0.3.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "97ca422aad4125c6c3d3c790abb54a238d6528d19d403f0097d9968a63b81204"
    else
      url "https://github.com/StudioLE/alnwick/releases/download/v0.3.0/alnwick-0.3.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "b2ad8b3c31b323aef30cd0b16b5acf5b48a610211b6cb90da27c15d05dd24355"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/alnwick/releases/download/v0.3.0/alnwick-0.3.0-aarch64-apple-darwin.tar.xz"
      sha256 "ce81cffbb933f62d685bc197940ca2e4e0c81acca4eb6a6230bf68f9027ebb40"
    else
      url "https://github.com/StudioLE/alnwick/releases/download/v0.3.0/alnwick-0.3.0-x86_64-apple-darwin.tar.xz"
      sha256 "d45d5ba3da0816268ea3e8c62265805762c1f1637255695970099e1ee57f38e2"
    end
  end

  def install
    bin.install "alnwick"
  end

  test do
    system "#{bin}/alnwick", "--help"
  end
end

