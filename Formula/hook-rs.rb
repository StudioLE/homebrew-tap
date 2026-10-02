class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.21.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.21.0/hook-rs-0.21.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "fdb6d79e6a4397e1f4fadd840a254058f86a8831dbd8326851dfa0b653f28c8c"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.21.0/hook-rs-0.21.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "a351d3fdd698969ebf617b2bd8618e968c7d42a0d9e3f2a6de82894b1072c1f6"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.21.0/hook-rs-0.21.0-aarch64-apple-darwin.tar.xz"
      sha256 "9af56d08f46b776e92bc6ec12d7a83dee808d1cb9d5a282db7a026bd8ae7cb24"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.21.0/hook-rs-0.21.0-x86_64-apple-darwin.tar.xz"
      sha256 "92c2a6b599de69aba724474bb3322b43ef9caabf90644472b81ed1b4dd20aa0c"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

