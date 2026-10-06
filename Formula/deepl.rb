class Deepl < Formula
  desc "Translate text, documents and code with the DeepL API"
  homepage "https://github.com/DeepL/deepl-cli"
  url "https://github.com/DeepL/deepl-cli/archive/e08225a138a42b8fafde72abe4a28a079ccc8295.tar.gz"
  version "2.0.0"
  sha256 "ef9e2aede7445c0f12531984b9dc6e514288c3c2e7f8f25cf165e8d8d8574d36"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(prefix: false)
    system "npm", "run", "build"
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deepl --version")
  end
end
