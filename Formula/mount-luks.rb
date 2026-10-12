class MountLuks < Formula
  desc "A simple CLI tool to unlock and mount a LUKS encrypted disk."
  homepage "https://github.com/StudioLE/mount-luks"
  license "GPL-3.0-only"
  version "0.8.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.8.0/mount-luks-0.8.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "4acd80f7a8bf2649922d8750e7d8b08739bb3c47967599ae422cdf7a2c680a3d"
    else
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.8.0/mount-luks-0.8.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "980c1a6568488357bf6397e967e97671c7da6f77b74823499a1632e2ea93bb87"
    end
  end

  def install
    bin.install "mount-luks"
  end

  test do
    system "#{bin}/mount-luks", "--help"
  end
end

