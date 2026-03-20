class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.6.1"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.6.1/hook-rs-0.6.1-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "09504c0189ebde0f9cd3745649c3e25edad6c44c2b8f503fe129eb11823c08b1"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.6.1/hook-rs-0.6.1-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "a787ab3f7e4bb3082e9dc8ee8c93d1f3b720cb3f2be0c66da0ecd189a710c8d2"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.6.1/hook-rs-0.6.1-aarch64-apple-darwin.tar.xz"
      sha256 "dd2a0a44af7b69679239fb5459aa4b14a3e097836a6baccc1bd095390d65e059"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.6.1/hook-rs-0.6.1-x86_64-apple-darwin.tar.xz"
      sha256 "867f88705964f31d6845722e0d1609e30dac329fd5b382590318eda2a912e919"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

