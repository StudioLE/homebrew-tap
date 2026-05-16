class MountLuks < Formula
  desc "A simple CLI tool to unlock and mount a LUKS encrypted disk."
  homepage "https://github.com/StudioLE/mount-luks"
  license "GPL-3.0-only"
  version "0.7.2"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.7.2/mount-luks-0.7.2-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "16925500e0fb0ab0a2d61968ed97be0ee1cf6e7ee6e877602aadf0590aaaf9f8"
    else
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.7.2/mount-luks-0.7.2-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "8de327364e593f2c1c89267db5dbdd7ed63ba7e5edab2c425ca073a71e544f62"
    end
  end

  def install
    bin.install "mount-luks"
  end

  test do
    system "#{bin}/mount-luks", "--help"
  end
end

