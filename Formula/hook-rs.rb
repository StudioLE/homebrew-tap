class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.4.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.4.0/hook-rs-0.4.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "dd9b3db908a0f310b3e24dfea0ca2733ad9f476edbcc5764cc6b277c5ce63225"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.4.0/hook-rs-0.4.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "61b1436951169c9415368503722b64579a814ea19bdd49fdccf70984fb3c4379"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.4.0/hook-rs-0.4.0-aarch64-apple-darwin.tar.xz"
      sha256 "1196cfcc614471497797c86bae41cc55d9b953e8080765834557c6ae5ccca022"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.4.0/hook-rs-0.4.0-x86_64-apple-darwin.tar.xz"
      sha256 "c2b568abe1f22fdf503f514bdc5a3e5e33f0c20cc38664e85eaec425fe4e32e4"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

