class PhotoSort < Formula
  desc "A tool to rename and sort photos/videos by its EXIF date/metadata"
  homepage "https://github.com/StudioLE/PhotoSort"
  license "GPL-3.0-or-later"
  version "0.3.5"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StudioLE/PhotoSort/releases/download/v0.3.5/photo_sort-0.3.5-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "3ed1ad86c00d7f82ed25266a686cb62697dd5aa0dc25408cefc34659754245fd"
    else
      url "https://github.com/StudioLE/PhotoSort/releases/download/v0.3.5/photo_sort-0.3.5-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "d0c852b98523d15d788e6cf160a86b189868b3031b79a3ae7fe327d8fe20f956"
    end
  end

  on_macos do
    url "https://github.com/StudioLE/PhotoSort/releases/download/v0.3.5/photo_sort-0.3.5-aarch64-apple-darwin.tar.xz"
    sha256 "151566f884c683a7bc851dee735024a3723748f56dd44ecb2a6e2303493c78cb"
  end

  def install
    bin.install "photo_sort"
  end

  test do
    system "#{bin}/photo_sort", "--help"
  end
end
