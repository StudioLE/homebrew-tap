class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.11.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.11.0/hook-rs-0.11.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "895ea1bf0af02914c3da633443aec886a9cc453976525b503fc0b742dce3ff75"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.11.0/hook-rs-0.11.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "01bc448ea7a41fba78f801cf35a7b0c3faf1586b31d0ca6b10ba93cceaeb3733"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.11.0/hook-rs-0.11.0-aarch64-apple-darwin.tar.xz"
      sha256 "216ccd76a36796f0172c99ec3bd5833e3fab73336eb24824f1ee566b93242b73"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.11.0/hook-rs-0.11.0-x86_64-apple-darwin.tar.xz"
      sha256 "45c6bed6ab9b06ed6d313d67b3826babb4b5232ba8e04c9fd3706bd27687416e"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

