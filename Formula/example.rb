class Example < Formula
  desc "Exemplary template for Rust CLI projects"
  homepage "https://github.com/StudioLE/example-rs"
  license "AGPL-3.0-only"
  version "0.2.1"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/example-rs/releases/download/v0.2.1/example-0.2.1-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "0d277980173a7376002568d852f7f3ca508b0d9477146e8ce72cbb4a2de8ec8f"
    else
      url "https://github.com/StudioLE/example-rs/releases/download/v0.2.1/example-0.2.1-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "18f9d5523dcd9739f2a76d2aff8dc5ce69477479d369392bd80a67c4ef80e5f8"
    end
  end

  on_macos do
    url "https://github.com/StudioLE/example-rs/releases/download/v0.2.1/example-0.2.1-aarch64-apple-darwin.tar.xz"
    sha256 "ee897b5273f81595ad2b2dd9306246b3dcebc453ce58bcc05c1b7717aa22a6a8"
  end

  def install
    bin.install "example"
  end

  test do
    system "#{bin}/example", "--help"
  end
end
