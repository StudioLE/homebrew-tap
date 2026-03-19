class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.6.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.6.0/hook-rs-0.6.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "4a86ce7ac2d30f9cd03cc79432b12d4bee2128ed6ecd32ad1ddd585d33c1ac1d"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.6.0/hook-rs-0.6.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "fc82cb06c370d2c45e6be618059ef16a471c168924694a627713edf22902224d"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.6.0/hook-rs-0.6.0-aarch64-apple-darwin.tar.xz"
      sha256 "272183fed00f7d5203599ce70550401f6b49bf4a60e672bee20923a2245ea383"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.6.0/hook-rs-0.6.0-x86_64-apple-darwin.tar.xz"
      sha256 "851a82a4480f5ab8cc9702b55401e741de42975d715df626e4f50cead0efb12f"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

