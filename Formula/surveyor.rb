class Surveyor < Formula
  desc "Version a Cargo repo from git tags and conventional commits, and render release notes"
  homepage "https://github.com/StudioLE/surveyor-rs"
  license "AGPL-3.0-only"
  version "0.2.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/surveyor-rs/releases/download/v0.2.0/surveyor-0.2.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "f4ba241c871b3d07245ffe2f1af771c35084e8627d742d4f25cc9719749e10c6"
    else
      url "https://github.com/StudioLE/surveyor-rs/releases/download/v0.2.0/surveyor-0.2.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "b83c4c2457ad449268366bd0d05f37b167779d4156154325a5edba8b3bbea5c1"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/surveyor-rs/releases/download/v0.2.0/surveyor-0.2.0-aarch64-apple-darwin.tar.xz"
      sha256 "ebad775c4b21b1a31764a7366a595339a2d5ec9e4f8f8d834f9d1c7135cc46a1"
    else
      url "https://github.com/StudioLE/surveyor-rs/releases/download/v0.2.0/surveyor-0.2.0-x86_64-apple-darwin.tar.xz"
      sha256 "53507d66b57259755c9a4b0c4c2bf3214abd119ed59aea7277ccce8abaffc61d"
    end
  end

  def install
    bin.install "surveyor"
  end

  test do
    system "#{bin}/surveyor", "--help"
  end
end

