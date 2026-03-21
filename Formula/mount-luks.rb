class MountLuks < Formula
  desc "A simple CLI tool to unlock and mount a LUKS encrypted disk."
  homepage "https://github.com/StudioLE/mount-luks"
  license "GPL-3.0-only"
  version "0.6.1"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.6.1/mount-luks-0.6.1-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "ad3f2d4071f61567f5dba400ce62c6218443b6518ce14b2ef04b88791c92cb8e"
    else
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.6.1/mount-luks-0.6.1-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "29ff577c37b7dd185ee5b8b480438c72d2e9c8f132401dc63df0019fee6525e2"
    end
  end

  def install
    bin.install "mount-luks"
  end

  test do
    system "#{bin}/mount-luks", "--help"
  end
end

