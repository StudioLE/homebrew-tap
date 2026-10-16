class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.23.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.23.0/hook-rs-0.23.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "4ab20382a13ad5215db002b2df6acb131d8c9fe7121ad99cd4e9291fd8213a2a"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.23.0/hook-rs-0.23.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "7b7a441ef509dcbb7c144b3ea369909a387e78d2a73a19d6f65bf69f63d6a0d6"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.23.0/hook-rs-0.23.0-aarch64-apple-darwin.tar.xz"
      sha256 "fcb4cded7f16c3439213937b62962495b249f67b2fa44be4483a3a766a150cd2"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.23.0/hook-rs-0.23.0-x86_64-apple-darwin.tar.xz"
      sha256 "a46f3a8ee2426648535fe7fd85c6c0c8e7a9dc949920c768f8993f11dc40d66d"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

