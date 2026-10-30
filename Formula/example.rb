class Example < Formula
  desc "Exemplary template for Rust CLI projects"
  homepage "https://github.com/StudioLE/Example"
  license "AGPL-3.0-only"
  version "0.2.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/Example/releases/download/v0.2.0/example-0.2.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "d1c4bb3d0072f117c6ed78d76d06d2db5f13a5417ff300357137101ea6fc3a6b"
    else
      url "https://github.com/StudioLE/Example/releases/download/v0.2.0/example-0.2.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "c934ce6fbb7720084c93667c0843f6273e57714b874ece4c133dcd351183c207"
    end
  end

  on_macos do
    url "https://github.com/StudioLE/Example/releases/download/v0.2.0/example-0.2.0-aarch64-apple-darwin.tar.xz"
    sha256 "c244e4a80996209abf8b2c9d551f2bf711bddc08b6f6fa2919d78ef3c85e5f21"
  end

  def install
    bin.install "example"
  end

  test do
    system "#{bin}/example", "--help"
  end
end
