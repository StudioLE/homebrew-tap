class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.14.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.14.0/hook-rs-0.14.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "c1a90920c869c1b0ef6657f59e0f3fe914efaaeca74f39e5aacc5dcf70f59671"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.14.0/hook-rs-0.14.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "fccbaeb04ea0b3f90945f8085a3cb407bea164cd03077160f215806601c56638"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.14.0/hook-rs-0.14.0-aarch64-apple-darwin.tar.xz"
      sha256 "6e6e20bce6052ca9cff2daf01c1d9ababf15a5419e53bc7ba7c01c1cfe59a182"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.14.0/hook-rs-0.14.0-x86_64-apple-darwin.tar.xz"
      sha256 "f4b302e3f477859d9e1e1c0641e05a5b3cc6a6d62fa6f8458a36b57fa1fe1cd7"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

