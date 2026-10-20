class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.25.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.25.0/hook-rs-0.25.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "fa5b8aabf759fc340c9f9631b77f07d3f0c5c9fa4448487e076b5fe28ad837a6"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.25.0/hook-rs-0.25.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "eb4e18ae82f4b4613b35990df3fa60469c7567b56d6d0b5c9733eadb9986ee97"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.25.0/hook-rs-0.25.0-aarch64-apple-darwin.tar.xz"
      sha256 "6636f890817632db99b83b1530a43ab7badef1d6aec0f6836082e812b98fd833"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.25.0/hook-rs-0.25.0-x86_64-apple-darwin.tar.xz"
      sha256 "a7138031e7a6f61a9f61ef5c4936301efd794e4a35d1a7a90fffb1d80e03fb2e"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

