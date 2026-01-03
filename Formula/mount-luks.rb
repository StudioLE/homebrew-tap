class MountLuks < Formula
  desc "A simple CLI tool to unlock and mount a LUKS encrypted disk."
  homepage "https://github.com/StudioLE/mount-luks"
  license "GPL-3.0-only"
  version "0.4.1"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.4.1/mount-luks-0.4.1-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "1172c51ac2f13578222bb3a4bfda824d0771afdfcf29f44f3669575671339cb5"
    else
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.4.1/mount-luks-0.4.1-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "20e4d58f83b8f1215cd7dfb782140b9be2c599782633a095084c32bebf9b875d"
    end
  end

  def install
    bin.install "mount-luks"
  end

  test do
    system "#{bin}/mount-luks", "--help"
  end
end
