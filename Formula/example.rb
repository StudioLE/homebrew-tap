class Example < Formula
  desc "Exemplary template for Rust CLI projects"
  homepage "https://github.com/StudioLE/Example"
  license "AGPL-3.0-only"
  version "0.1.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/Example/releases/download/v0.1.0/example-0.1.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "e1bded99702c7d7d905930c13d3cc5deffd6cb8c423ea35f0ecac3cf50ad139f"
    else
      url "https://github.com/StudioLE/Example/releases/download/v0.1.0/example-0.1.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "1743c84b0065dcc346cef85c1c4f864bfd7df962960aa68b004730e667ad46a9"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/Example/releases/download/v0.1.0/example-0.1.0-aarch64-apple-darwin.tar.xz"
      sha256 "dcc3dd09fada2cd9d0a7fafcedd0d51e3deca8c4670cb32aa29574c9c7d8c32b"
    else
      url "https://github.com/StudioLE/Example/releases/download/v0.1.0/example-0.1.0-x86_64-apple-darwin.tar.xz"
      sha256 "2091bb8b2c11264252c9672d501b8b5381aae87ea5e2e2a5927d65eb01ef14f3"
    end
  end

  def install
    bin.install "example"
  end

  test do
    system "#{bin}/example", "--help"
  end
end

