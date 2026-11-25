# Written by the release workflow of reddevsdotio/zamu from docker/homebrew/zamu.rb.template.
# Changes made here are overwritten by the next release.
class Zamu < Formula
  desc "Command-line client for Zamu, self-hosted project management for AI agents"
  homepage "https://github.com/reddevsdotio/zamu"
  url "https://registry.npmjs.org/@reddevs/zamu/-/zamu-0.9.0.tgz"
  sha256 "859f45354f4fab43d03334fa3c36ddd4e5fa0ad3ce5cdf4cccda562dd9e24089"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/zamu --version").strip
  end
end
