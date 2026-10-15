class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.22.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.22.0/hook-rs-0.22.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "e8f76d56bbbb71227a3669d827de05229bb0ff0afe5875cbb1eb6cdfa9893e33"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.22.0/hook-rs-0.22.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "cc736f3775278152a2ab434e7077314b5c50e2379663d0aeeaa40f566427f7b5"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.22.0/hook-rs-0.22.0-aarch64-apple-darwin.tar.xz"
      sha256 "119bc712df47adcc3f9c3cf42a0557e3cd165fa255dcd0d2f179ac59639851df"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.22.0/hook-rs-0.22.0-x86_64-apple-darwin.tar.xz"
      sha256 "7eda33c66c2e2c168a013a7441586862bc96eaebfe114f2eec3ee17cf15519e8"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

