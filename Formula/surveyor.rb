class Surveyor < Formula
  desc "Version a Cargo repo from git tags and conventional commits, and render release notes"
  homepage "https://github.com/StudioLE/surveyor-rs"
  license "AGPL-3.0-only"
  version "0.1.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/surveyor-rs/releases/download/v0.1.0/surveyor-0.1.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "988173bd398e0dcc3b6793d489fbe49345e37c1730e25eb81d7a0296b7ba4fd0"
    else
      url "https://github.com/StudioLE/surveyor-rs/releases/download/v0.1.0/surveyor-0.1.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "144d7b6c8f284dfcc85de18fdb11f71c029680845551268b692b79f67f226e26"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/surveyor-rs/releases/download/v0.1.0/surveyor-0.1.0-aarch64-apple-darwin.tar.xz"
      sha256 "e3418e8a1618f710c2d94936c50e0040a460e479e29592893c90a23ec82edb9b"
    else
      url "https://github.com/StudioLE/surveyor-rs/releases/download/v0.1.0/surveyor-0.1.0-x86_64-apple-darwin.tar.xz"
      sha256 "07197aaf0d272aa1455094b0ac3b3a0eab2f40c565e439f34167659b3e4ddd89"
    end
  end

  def install
    bin.install "surveyor"
  end

  test do
    system "#{bin}/surveyor", "--help"
  end
end

