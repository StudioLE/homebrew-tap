class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.7.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.7.0/hook-rs-0.7.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "35407b5a9e836c84d8f9b46465fd56733c478cd3a856f46ccc5965f6d0aa14ed"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.7.0/hook-rs-0.7.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "eb27e802f780013d93a537f329585a0a46a8309d0b4207332c4c43e57400d3b6"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.7.0/hook-rs-0.7.0-aarch64-apple-darwin.tar.xz"
      sha256 "2a6f96a8227c62ea0f30fb874a60d9c05ed28bbae561f0794d41621352863138"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.7.0/hook-rs-0.7.0-x86_64-apple-darwin.tar.xz"
      sha256 "c38f6601c653f65ac31ccbf2b7e5c93db5574b10456a4b3dcf7f744e6e1dfb91"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

