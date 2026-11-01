class Surveyor < Formula
  desc "Version a Cargo repo from git tags and conventional commits, and render release notes"
  homepage "https://github.com/StudioLE/surveyor-rs"
  license "AGPL-3.0-only"
  version "0.3.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/surveyor-rs/releases/download/v0.3.0/surveyor-0.3.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "c87411576fe4e0f4dd706de0c1ba03d6feb0878cd48b216df696c77a813992fc"
    else
      url "https://github.com/StudioLE/surveyor-rs/releases/download/v0.3.0/surveyor-0.3.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "8f07d994ac21e98bb88da59d14fb3023f169b488208c8e3cedd0fd781b12dc69"
    end
  end

  on_macos do
    url "https://github.com/StudioLE/surveyor-rs/releases/download/v0.3.0/surveyor-0.3.0-aarch64-apple-darwin.tar.xz"
    sha256 "1fb7baf7d6dd9c6ac2e309329de9f4fd30dbd0783441f27f2496fcd24cd26e16"
  end

  def install
    bin.install "surveyor"
  end

  test do
    system "#{bin}/surveyor", "--help"
  end
end
