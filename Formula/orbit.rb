class Orbit < Formula
  desc "Deploy Docker Compose stacks with local configs and sops secrets"
  homepage "https://github.com/StudioLE/Orbit"
  license "AGPL-3.0-only"
  version "0.2.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/Orbit/releases/download/v0.2.0/orbit-0.2.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "8f5445e9875c255145045b083e89b7fd4e4860333ee159cdf1c76a1e27ef0677"
    else
      url "https://github.com/StudioLE/Orbit/releases/download/v0.2.0/orbit-0.2.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "50e78729b3fe163dcae790b3846a397b05d5e86d66b697be6e2c93bea6a034d2"
    end
  end

  on_macos do
    url "https://github.com/StudioLE/Orbit/releases/download/v0.2.0/orbit-0.2.0-aarch64-apple-darwin.tar.xz"
    sha256 "f5fbe275947d28e0d7b6dfb369dc958a39d511b8af022a79c28b04a6046d2daf"
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--help"
  end
end
