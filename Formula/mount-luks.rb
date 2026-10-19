class MountLuks < Formula
  desc "A simple CLI tool to unlock and mount a LUKS encrypted disk."
  homepage "https://github.com/StudioLE/mount-luks"
  license "GPL-3.0-only"
  version "0.8.1"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.8.1/mount-luks-0.8.1-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "dce693292dc829219a7c100d027d6f603ea7490aa13746a209a2e3102ebc3052"
    else
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.8.1/mount-luks-0.8.1-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "37c0dd3d19ad13e4f8cbb1b7787d56ea20199713e35431b1c8129221bcf88461"
    end
  end

  def install
    bin.install "mount-luks"
  end

  test do
    system "#{bin}/mount-luks", "--help"
  end
end

