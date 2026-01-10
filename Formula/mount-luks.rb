class MountLuks < Formula
  desc "A simple CLI tool to unlock and mount a LUKS encrypted disk."
  homepage "https://github.com/StudioLE/mount-luks"
  license "GPL-3.0-only"
  version "0.5.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.5.0/mount-luks-0.5.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "1a2623789a1a4c8c7739f9b1e06e275a0a4fd56a98751b6862fee68b6ae84863"
    else
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.5.0/mount-luks-0.5.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "ee61d12a5e118977c901184ec83aa8daf6402af52eb39b7ee41caabef09ad871"
    end
  end

  def install
    bin.install "mount-luks"
  end

  test do
    system "#{bin}/mount-luks", "--help"
  end
end

