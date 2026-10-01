class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.20.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.20.0/hook-rs-0.20.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "800c01b26af623db9fec1d3edb9bb22e99d3f72bfda7b89569e12a8b7b78c46e"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.20.0/hook-rs-0.20.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "bba375a610b5d8c6857904450f613fbc71d3168f07cf9a6615c810b4eb08e000"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.20.0/hook-rs-0.20.0-aarch64-apple-darwin.tar.xz"
      sha256 "80dcae6d8a2dd6cd86780c36feb0d27de0ea8bac38f6a5fa0a872036f81295cc"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.20.0/hook-rs-0.20.0-x86_64-apple-darwin.tar.xz"
      sha256 "c6ef14a57acdbee41ed8ea9d6d0e8af4f1a4eb8f9e551a6c308081a3ca516708"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

