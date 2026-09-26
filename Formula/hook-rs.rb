class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.19.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.19.0/hook-rs-0.19.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "984943e22bbf3f6d50c591e15ce3279c92f89998a22f949aa7a66435ba7db4ea"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.19.0/hook-rs-0.19.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "a0bfa478c73085c1463de2ceb6dbf345020c9b8fb2e8290918cba83ed9468805"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.19.0/hook-rs-0.19.0-aarch64-apple-darwin.tar.xz"
      sha256 "6598d29763dc35a890ba1ca8d48bb7f073e9bb42688a37ecb728988fa3cf5f44"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.19.0/hook-rs-0.19.0-x86_64-apple-darwin.tar.xz"
      sha256 "af4e4a2dae2ad0b047480f60417b9b43d00d3854e4855826f0d6fde0135a8fca"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

