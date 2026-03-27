class Alnwick < Formula
  desc "A self hosted podcast library"
  homepage "https://github.com/StudioLE/alnwick"
  license "GPL-3.0-only"
  version "0.4.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/alnwick/releases/download/v0.4.0/alnwick-0.4.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "0dfdc1278a2c076a891b2429f597e58a2487249a0df1be3362bec2cbade51045"
    else
      url "https://github.com/StudioLE/alnwick/releases/download/v0.4.0/alnwick-0.4.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "01902816d3f540c8ecb7de861c14a9a1d793e0705bcaf51781644c746ed72641"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/alnwick/releases/download/v0.4.0/alnwick-0.4.0-aarch64-apple-darwin.tar.xz"
      sha256 "09ee7ef253d0a3253c4c89c61e59ce3735fa3224e28e9cc99ae71cffe99593ce"
    else
      url "https://github.com/StudioLE/alnwick/releases/download/v0.4.0/alnwick-0.4.0-x86_64-apple-darwin.tar.xz"
      sha256 "ec99e24c1d4d070eaa7afb995ea49d3f5dd28c576d98c8817109c47f839aae9a"
    end
  end

  def install
    bin.install "alnwick"
  end

  test do
    system "#{bin}/alnwick", "--help"
  end
end

