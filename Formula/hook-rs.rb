class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.12.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.12.0/hook-rs-0.12.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "74f2bfbdb7025ca8c69ee078f8db60ab9f95a4512d96a3334108f255c4b5d463"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.12.0/hook-rs-0.12.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "e1c923998a24e98c18ce889d5afd18ba40a4023081681ff46b6aac8196719a8e"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.12.0/hook-rs-0.12.0-aarch64-apple-darwin.tar.xz"
      sha256 "92bbd48102957ccbe00599b7d81c71aa4122fb710d9626ba0df9bc3ca01a7be0"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.12.0/hook-rs-0.12.0-x86_64-apple-darwin.tar.xz"
      sha256 "4dd2eabd97b09e2874eb2dcea252d6f8111a51f4c50a4928e31c27d1cbabe170"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

