class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.5.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.5.0/hook-rs-0.5.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "a298d456c24707271acf7bf655f7d01e6fd63f9ba440b606e2c808b433d0cfb1"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.5.0/hook-rs-0.5.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "4bc4e61946393d63b1d042c40dd96f880a471f9fd2678a2d87005d35e0dfc7d0"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.5.0/hook-rs-0.5.0-aarch64-apple-darwin.tar.xz"
      sha256 "81c2df5de0a9eb473a0bdafeccd23e21db7bbb56976a37faae5bae15e4e9eb8c"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.5.0/hook-rs-0.5.0-x86_64-apple-darwin.tar.xz"
      sha256 "ad87d23c64452b5c52cca506e9b8ca01634385a185f317f50911ba8d33ad654e"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

