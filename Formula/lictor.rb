class Lictor < Formula
  desc "Policy gate + output minifier for coding-agent tool calls"
  homepage "https://github.com/sladg/lictor"
  url "https://github.com/sladg/lictor/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "66d9e0972df0ce96b137d9285812236e38da2db27109a75d24fad8fba3b703cc"
  license "MIT"
  head "https://github.com/sladg/lictor.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "policy gate", shell_output("#{bin}/lictor help")
  end
end
