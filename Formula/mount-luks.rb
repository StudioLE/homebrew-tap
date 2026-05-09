class MountLuks < Formula
  desc "A simple CLI tool to unlock and mount a LUKS encrypted disk."
  homepage "https://github.com/StudioLE/mount-luks"
  license "GPL-3.0-only"
  version "0.7.1"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.7.1/mount-luks-0.7.1-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "480fd3e6afb4188d52064e724c65d148d576387a13533dc07e659c78320a55dd"
    else
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.7.1/mount-luks-0.7.1-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "a8918060f2388779e1233c74ca987280c23dc8f8ff563f28235d562286d2c359"
    end
  end

  def install
    bin.install "mount-luks"
  end

  test do
    system "#{bin}/mount-luks", "--help"
  end
end

