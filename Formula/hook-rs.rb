class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.18.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.18.0/hook-rs-0.18.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "48ade3658adf6a8bd0da4299225a6caa7514e7fa2a66cc545c5cd47f5bceb0b8"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.18.0/hook-rs-0.18.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "541001b92cc63710afe0b5ba6081246fe9986910212edd247e7886573202c26f"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.18.0/hook-rs-0.18.0-aarch64-apple-darwin.tar.xz"
      sha256 "a27d721d7fee5d067c9f8eb2cfc44eed369feb0ce580f26abfb475c0c0366e83"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.18.0/hook-rs-0.18.0-x86_64-apple-darwin.tar.xz"
      sha256 "987fdc6b1614aeb904af17ab90e2d35f11f37b2ed55eed82895ae14f219a086a"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

