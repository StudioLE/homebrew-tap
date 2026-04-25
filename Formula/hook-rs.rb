class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.9.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.9.0/hook-rs-0.9.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "4187046f0541e8ccac122ed2d0df608a46033ba4648e13932d73e863cb6a85db"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.9.0/hook-rs-0.9.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "005d5aab77a4820221fbfe921fc719180cd074d41508fd8c60f8fb6f4faf6e86"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.9.0/hook-rs-0.9.0-aarch64-apple-darwin.tar.xz"
      sha256 "f640f40988456a39d3beac3a3f89cfda4e3f5a79be9c9ae009c5fb05a86bc766"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.9.0/hook-rs-0.9.0-x86_64-apple-darwin.tar.xz"
      sha256 "7cacb6ef8fbeb59dca67aa47056ed0aea3a21ebfaf0d9d776ccd3659792c853a"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

