class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.8.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.8.0/hook-rs-0.8.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "9113bf8d6def9827a8909d5db458c82175affd84fee0068ffdc6be3c5cfbd6cc"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.8.0/hook-rs-0.8.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "722c57672605894d48327a7ecbbdc0a166b004122ecf4cad8b50e62c854330ea"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.8.0/hook-rs-0.8.0-aarch64-apple-darwin.tar.xz"
      sha256 "69a66ef86f33edaa56c75c0aedbfb35bf7918d6f85ea2e911d9330a2ce292d13"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.8.0/hook-rs-0.8.0-x86_64-apple-darwin.tar.xz"
      sha256 "0507968a4e9a8eb4eee94cebef6e09550c7fcf285c913bfd105121e8fda7566a"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

