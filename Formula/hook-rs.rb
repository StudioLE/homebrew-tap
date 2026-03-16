class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.4.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.4.0/hook-rs-0.4.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "a03799aba07110ab27cfeb97aa00e11109a76b1b7e9b4a61b1c1985e362808a3"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.4.0/hook-rs-0.4.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "7336736838cd4776b1fb380e4d841ddf6ad329e2da99e0f2c83bb696acef97c8"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.4.0/hook-rs-0.4.0-aarch64-apple-darwin.tar.xz"
      sha256 "162767568ab4c44620c95eb0f18617bdd4d033083c202bb7c7758d0cc3d8bcfe"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.4.0/hook-rs-0.4.0-x86_64-apple-darwin.tar.xz"
      sha256 "5a8fa18f0352df8084676b0da1bae2d4180eb7a882b51dc00d0a54c0df8fa3d9"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

