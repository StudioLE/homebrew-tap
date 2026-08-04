class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.15.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.15.0/hook-rs-0.15.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "bdc047a8186cc501f3c63a4029964ee024591d2ead938a843e2f713193e2cbb8"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.15.0/hook-rs-0.15.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "88dae7659d37409cb930048f336fb466590a8c0babb9db9b9239a255f569ec88"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.15.0/hook-rs-0.15.0-aarch64-apple-darwin.tar.xz"
      sha256 "2530a7416e61e42a580c14585c7372e32edae9f4f30df731d174fa80c6626c92"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.15.0/hook-rs-0.15.0-x86_64-apple-darwin.tar.xz"
      sha256 "4f4fee8f9a3fe3a9f5b26760a5f78591fb717f8c3c9b40177c2d106b8543a73c"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

