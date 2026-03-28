class MountLuks < Formula
  desc "A simple CLI tool to unlock and mount a LUKS encrypted disk."
  homepage "https://github.com/StudioLE/mount-luks"
  license "GPL-3.0-only"
  version "0.6.2"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.6.2/mount-luks-0.6.2-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "46c34dae432be04ac0048bd96618f93444df1de5b223edd9bf4dedf745da0da6"
    else
      url "https://github.com/StudioLE/mount-luks/releases/download/v0.6.2/mount-luks-0.6.2-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "f6edb640e8f822e9419b14fa5e8a645dd4850cb5cf89d38e7b4f936ca7d4991f"
    end
  end

  def install
    bin.install "mount-luks"
  end

  test do
    system "#{bin}/mount-luks", "--help"
  end
end

