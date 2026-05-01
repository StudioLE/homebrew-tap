class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.13.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.13.0/hook-rs-0.13.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "502dfb9ab5ccba714e1d9614a0156a7b63055fb6cd302e47a6084ded4b84d02e"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.13.0/hook-rs-0.13.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "9d5c9ed9660bfdc04a5f5b100395bf33015232961c29caa1178d8a65a7e6e16b"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.13.0/hook-rs-0.13.0-aarch64-apple-darwin.tar.xz"
      sha256 "d3fbcbb18907593678583c2485a73a56d87561388398e9cc99c1bfcab18a87a1"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.13.0/hook-rs-0.13.0-x86_64-apple-darwin.tar.xz"
      sha256 "047bcde90aaa059a4310a764125ac2deaa6bcc95e492b7cf4f67e723dfa64191"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

