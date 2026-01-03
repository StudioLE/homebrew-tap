class MountLuks < Formula
  desc "A simple CLI tool to unlock and mount a LUKS encrypted disk."
  homepage "https://github.com/StudioLE/mount-luks"
  license "GPL-3.0-only"
  version "0.4.2"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.4.2/mount-luks-0.4.2-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "422afa83e3d7b04d4cb855610df06a6d5b3993963d86fc56a537e2f012a0b5ce"
    else
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.4.2/mount-luks-0.4.2-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "672e48051bdbe5d550f37b695c8926b3dca038f3233415332998f7164badae8d"
    end
  end

  def install
    bin.install "mount-luks"
  end

  test do
    system "#{bin}/mount-luks", "--help"
  end
end

