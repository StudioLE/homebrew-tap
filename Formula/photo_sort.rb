class PhotoSort < Formula
  desc "A tool to rename and sort photos/videos by its EXIF date/metadata"
  homepage "https://github.com/StudioLE/PhotoSort"
  license "GPL-3.0-or-later"
  version "0.3.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/PhotoSort/releases/download/v0.3.0/photo_sort-0.3.0-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "68bfbc56dad2f1495d3381700a0587124911f435fa889d5aedfd8aa9b3de5d14"
    else
      url "https://github.com/StudioLE/PhotoSort/releases/download/v0.3.0/photo_sort-0.3.0-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "636269fd6b6797ee52ee7e7009aee49463f80f2927bbbc3eda9b131c79d71d71"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/PhotoSort/releases/download/v0.3.0/photo_sort-0.3.0-aarch64-apple-darwin.tar.xz"
      sha256 "7d3c028c2f1bcc8d3b841ef04785ed2fdf2de82235173519291cc8ad10d478cd"
    else
      url "https://github.com/StudioLE/PhotoSort/releases/download/v0.3.0/photo_sort-0.3.0-x86_64-apple-darwin.tar.xz"
      sha256 "77eb73f663fcb93d4dd64cdcad8d50fcbb060cd3083954bc5c9f00c961254c1d"
    end
  end

  def install
    bin.install "photo_sort"
  end

  test do
    system "#{bin}/photo_sort", "--help"
  end
end

