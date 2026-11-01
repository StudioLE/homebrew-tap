class Orbit < Formula
  desc "Deploy Docker Compose stacks with local configs and sops secrets"
  homepage "https://github.com/StudioLE/Orbit"
  license "AGPL-3.0-only"
  version "0.3.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/Orbit/releases/download/v0.3.0/orbit-0.3.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "a7322e405450122b494c1c3d1bae5a16b1149e11510c99af7158a651bcdbdbe4"
    else
      url "https://github.com/StudioLE/Orbit/releases/download/v0.3.0/orbit-0.3.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "742e7dad9e75d3ebd11bd4ebda813858eba00c606f20df9745a3e28e3445e3cf"
    end
  end

  on_macos do
    url "https://github.com/StudioLE/Orbit/releases/download/v0.3.0/orbit-0.3.0-aarch64-apple-darwin.tar.xz"
    sha256 "26b13d51bfefe94c6bdfaba326d3f5006d6007c1961c4a42f3c5a5b48da177ec"
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--help"
  end
end
