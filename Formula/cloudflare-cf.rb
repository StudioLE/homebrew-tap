class CloudflareCf < Formula
  desc "Cloudflare CLI for the entire Cloudflare API"
  homepage "https://developers.cloudflare.com/cf/"
  url "https://registry.npmjs.org/cf/-/cf-1.0.0-beta.17.tgz"
  sha256 "04da3ec7e32787c45499fd293969cfb9bb139035d2105a7994687b94b713dca8"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "node"

  conflicts_with "cf", "cloudfoundry-cli", because: "both install `cf` binaries"

  def install
    # Releases pin dependencies published hours earlier, which the cooldown rejects
    system "npm", "install", *std_npm_args.reject { |arg| arg.start_with?("--min-release-age=") }
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cf --version")
  end
end
