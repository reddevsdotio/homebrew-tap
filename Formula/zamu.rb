# Written by the release workflow of reddevsdotio/zamu from docker/homebrew/zamu.rb.template.
# Changes made here are overwritten by the next release.
class Zamu < Formula
  desc "Command-line client for Zamu, self-hosted project management for AI agents"
  homepage "https://github.com/reddevsdotio/zamu"
  url "https://registry.npmjs.org/@reddevs/zamu/-/zamu-0.11.0.tgz"
  sha256 "d66392d105ac2ecf8e6206681bbdeef3bd061ba5b1abadaacf2edafdf414af63"
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
