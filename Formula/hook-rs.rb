class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.17.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.17.0/hook-rs-0.17.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "20ef113ea37e430d56a859670ad270b1e555d41cf32df2d04079babea563cc7c"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.17.0/hook-rs-0.17.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "203621ba5070c2d203934ce2b60d42cecb392be25aeec5cbaa78114dc0b435c5"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.17.0/hook-rs-0.17.0-aarch64-apple-darwin.tar.xz"
      sha256 "18be7fb9694373c580e88beb56fe9ebd8f8da48fb10d122a4fcf588c1078a528"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.17.0/hook-rs-0.17.0-x86_64-apple-darwin.tar.xz"
      sha256 "976cb6bc8a93524b54c23cc5ea5646c4bc6ef0f16248e8d6276bc4f81873e1af"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

