class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.24.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.24.0/hook-rs-0.24.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "84c1d7e67f5224efe6e15f4f99dc482836aa99b3f683199fcc4f23ffef6358f8"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.24.0/hook-rs-0.24.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "2f4dc17d86ba1bc4ecdc015ecade75aa7afeca57a8f3b6784a7c6c3fee5040d1"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.24.0/hook-rs-0.24.0-aarch64-apple-darwin.tar.xz"
      sha256 "97af04f03e064f68d514fcfcbf4a2ebc112665ee70db7ee2a57eb72332ed545e"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.24.0/hook-rs-0.24.0-x86_64-apple-darwin.tar.xz"
      sha256 "f8fd893ba0e9a4b75a5c4782b6cd4484c41c5b838433776ea6252fc433fcf3b6"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

