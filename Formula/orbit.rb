class Orbit < Formula
  desc "Deploy Docker Compose stacks with local configs and sops secrets"
  homepage "https://github.com/StudioLE/Orbit"
  license "AGPL-3.0-only"
  version "0.1.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/Orbit/releases/download/v0.1.0/orbit-0.1.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "005d41204382123c352b86de611848754ab1d033220d03e6a6e2bf3298e7107e"
    else
      url "https://github.com/StudioLE/Orbit/releases/download/v0.1.0/orbit-0.1.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "e266af77922e2ddc5b231c7b04e9edc6541568f3f7a1e46332b9496dec886f0e"
    end
  end

  on_macos do
    url "https://github.com/StudioLE/Orbit/releases/download/v0.1.0/orbit-0.1.0-aarch64-apple-darwin.tar.xz"
    sha256 "17a3266447327024397a214c433d42ec3012734a7edf23c59043870ebc88bec3"
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--help"
  end
end
