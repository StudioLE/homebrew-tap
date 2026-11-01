class Orbit < Formula
  desc "Deploy Docker Compose stacks with local configs and sops secrets"
  homepage "https://github.com/StudioLE/Orbit"
  license "AGPL-3.0-only"
  version "0.4.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/Orbit/releases/download/v0.4.0/orbit-0.4.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "89e16f24fd5cceeffbf603182fe7e662bd90d0a67996d0b7d9523b0902dfecf1"
    else
      url "https://github.com/StudioLE/Orbit/releases/download/v0.4.0/orbit-0.4.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "db7317b3c86f4b1df949cca2b368093fa6c8e9892bb52bd20c1da050f1bb0ac0"
    end
  end

  on_macos do
    url "https://github.com/StudioLE/Orbit/releases/download/v0.4.0/orbit-0.4.0-aarch64-apple-darwin.tar.xz"
    sha256 "00757a6f89ebabf1d87a14c54390dde32382256876bd38a701747d7813cac38f"
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--help"
  end
end
