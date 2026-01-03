class MountLuks < Formula
  desc "A simple CLI tool to unlock and mount a LUKS encrypted disk."
  homepage "https://github.com/StudioLE/mount-luks"
  license "GPL-3.0-only"
  version "0.4.2"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.4.2/mount-luks-0.4.2-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "118a71e1fc1a6cc9454e00b15000b26aa43c057d52305a4b8990c19cf4280008"
    else
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.4.2/mount-luks-0.4.2-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "337766a5f2d631532e3a7c6a93ecc33611eb4ea7694d5fe8b837d4322a3516de"
    end
  end

  def install
    bin.install "mount-luks"
  end

  test do
    system "#{bin}/mount-luks", "--help"
  end
end

