class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.4.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.4.0/hook-rs-0.4.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "ff3498a9637fe69d1a3e364023ebc3a6eba6f30aee6cfd0c00e9e3364a9fc2d4"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.4.0/hook-rs-0.4.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "a86db5de1ae85fd433ae90ab4255bdd70ad6859a5ef32226be97703361550ac4"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.4.0/hook-rs-0.4.0-aarch64-apple-darwin.tar.xz"
      sha256 "d865d906ba06ffb753af10de77f3ac0d88fdbd47a3fe8efd524024f2631cedda"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.4.0/hook-rs-0.4.0-x86_64-apple-darwin.tar.xz"
      sha256 "c80ee1efb50e69b226550e21f016e449baf7f7892d63f071e6870ea4a4b1675a"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

