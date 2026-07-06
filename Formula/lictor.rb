class Lictor < Formula
  desc "Policy gate + output minifier for coding-agent tool calls"
  homepage "https://github.com/sladg/lictor"
  url "https://github.com/sladg/lictor/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "961e9c049091a282f56e99a6a0247884d578c2b12755a1de0a967f0e87d5e4a2"
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
