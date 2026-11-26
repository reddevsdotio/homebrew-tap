# Written by the release workflow of reddevsdotio/zamu from docker/homebrew/zamu.rb.template.
# Changes made here are overwritten by the next release.
class Zamu < Formula
  desc "Command-line client for Zamu, self-hosted project management for AI agents"
  homepage "https://github.com/reddevsdotio/zamu"
  url "https://registry.npmjs.org/@reddevs/zamu/-/zamu-0.10.0.tgz"
  sha256 "933cd1322fa3d7b8d71ecf0aefcd99135667fb81944ab49b40547b9fdbb717f4"
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
