class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.14.1"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.14.1/hook-rs-0.14.1-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "3e5f46058f8099bf60a6a88aced5386263aba8d16ada04a02db9d7e24c912496"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.14.1/hook-rs-0.14.1-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "67acb65660bb06b3ccee84bd53b071edec2bbdf03f79036b5286b2b7d15ff04d"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.14.1/hook-rs-0.14.1-aarch64-apple-darwin.tar.xz"
      sha256 "20a476d8d2e9276a012e29842820f908c3b05d1d1319ce77e49f796022a5fdee"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.14.1/hook-rs-0.14.1-x86_64-apple-darwin.tar.xz"
      sha256 "b50db6f8db3fca405a6ee0d7764f0d5e6b0131dd6416893130c12d7a6a493f7a"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

