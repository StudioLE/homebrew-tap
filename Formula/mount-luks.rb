class MountLuks < Formula
  desc "A simple CLI tool to unlock and mount a LUKS encrypted disk."
  homepage "https://github.com/StudioLE/mount-luks"
  license "GPL-3.0-only"
  version "0.6.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.6.0/mount-luks-0.6.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "b6f1d271d2986f0cb96ed125644542cbe00f756ab70da4475dbb826b8b30d35b"
    else
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.6.0/mount-luks-0.6.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "66f25e299087a93a4724899adbd2635adf543de4b9c2b24e4d46a4c6a8fe14f7"
    end
  end

  def install
    bin.install "mount-luks"
  end

  test do
    system "#{bin}/mount-luks", "--help"
  end
end

