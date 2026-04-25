class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.10.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.10.0/hook-rs-0.10.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "fb78628cfb05697232cce4a309c93db667fa03c2ce14b2f8d5d37e128b9df185"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.10.0/hook-rs-0.10.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "e3988546a86118cb6b655af5de3a7df07f9b3b6c76db0db0925b11c98c0425a5"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.10.0/hook-rs-0.10.0-aarch64-apple-darwin.tar.xz"
      sha256 "ce6526b1652e4750fe0cb6220d7602d74423c708b91ebb73160f3e55ac114e71"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.10.0/hook-rs-0.10.0-x86_64-apple-darwin.tar.xz"
      sha256 "8bddd4dd1393b9a297edaf4152fff78f31417583a3d5d7f117a0dfb0064cab27"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

