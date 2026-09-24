class HookRs < Formula
  desc "Permission hooks for Claude Code with bash-aware command analysis"
  homepage "https://github.com/StudioLE/hook-rs"
  license "AGPL-3.0-only"
  version "0.16.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.16.0/hook-rs-0.16.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "b53766f178e93895e87f05b3dd875250e65ed97be1e60c882fa6045c2cb09a24"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.16.0/hook-rs-0.16.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "3b2855893ec645837a29391a0d909428601804fe1ea4ab908aec13adef161688"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.16.0/hook-rs-0.16.0-aarch64-apple-darwin.tar.xz"
      sha256 "004bf49846aa0249892ef9be4a32af15e9b3fb7ce5b4e4f0bdbb9c164941475e"
    else
      url "https://github.com/StudioLE/hook-rs/releases/download/v0.16.0/hook-rs-0.16.0-x86_64-apple-darwin.tar.xz"
      sha256 "844f65fcaf54989929edab520c44e44dfa753e5b7408f31c422ec00dbe34d12f"
    end
  end

  def install
    bin.install "hook-rs"
  end

  test do
    system "#{bin}/hook-rs", "--help"
  end
end

