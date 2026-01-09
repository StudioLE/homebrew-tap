class Alnwick < Formula
  desc "A self hosted podcast library"
  homepage "https://github.com/StudioLE/alnwick"
  license "GPL-3.0-only"
  version "0.3.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/alnwick/releases/download/v0.3.0/alnwick-0.3.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "557d1c3cebbc587d569bd2029291531bf07660b9eaab0923dc9373c63913437a"
    else
      url "https://github.com/StudioLE/alnwick/releases/download/v0.3.0/alnwick-0.3.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "14296451f715c3e54c287bb85009f3bdf0137dbaa263ec00e08ba58eacbaeb8b"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/alnwick/releases/download/v0.3.0/alnwick-0.3.0-aarch64-apple-darwin.tar.xz"
      sha256 "74585bbe9cbdd67f0a5e705838c099ffaa8b56e7b187aa9110ca776e93ee6f32"
    else
      url "https://github.com/StudioLE/alnwick/releases/download/v0.3.0/alnwick-0.3.0-x86_64-apple-darwin.tar.xz"
      sha256 "aca408f81f3c22d8007d1b6d79506c2c7f3a6d6ad5c620c3c18066b10882ae5f"
    end
  end

  def install
    bin.install "alnwick"
  end

  test do
    system "#{bin}/alnwick", "--help"
  end
end

