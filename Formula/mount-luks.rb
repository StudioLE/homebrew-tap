class MountLuks < Formula
  desc "A simple CLI tool to unlock and mount a LUKS encrypted disk."
  homepage "https://github.com/StudioLE/mount-luks"
  license "GPL-3.0-only"
  version "0.7.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.7.0/mount-luks-0.7.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "b9857ed420111b9ec06aec8321e3b07f77bf6c27ba29a8ce59ffe34bc11926cc"
    else
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.7.0/mount-luks-0.7.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "43a35a3769ea8db5cb23f2c4aabc44e86109b4a60452efc403c55a7571ef4add"
    end
  end

  def install
    bin.install "mount-luks"
  end

  test do
    system "#{bin}/mount-luks", "--help"
  end
end

