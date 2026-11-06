class PhotoSort < Formula
  desc "A tool to rename and sort photos/videos by its EXIF date/metadata"
  homepage "https://github.com/StudioLE/PhotoSort"
  license "GPL-3.0-or-later"
  version "0.3.5"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/PhotoSort/releases/download/v0.3.5/photo_sort-0.3.5-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "dc5c3fc74d77b6b4f693f406ddd4e7ac3a04446bb031ce48bac12cca16fc0bd5"
    else
      url "https://github.com/StudioLE/PhotoSort/releases/download/v0.3.5/photo_sort-0.3.5-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "3972225a0000c6686058d62a84aeb28ce695beb680ce14e7063822b85572833c"
    end
  end

  on_macos do
    url "https://github.com/StudioLE/PhotoSort/releases/download/v0.3.5/photo_sort-0.3.5-aarch64-apple-darwin.tar.xz"
    sha256 "9db5c0ddd1d9389b2ff000c4f3e786712b6d141e704d5ec4928659754bfab81a"
  end

  def install
    bin.install "photo_sort"
  end

  test do
    system "#{bin}/photo_sort", "--help"
  end
end
