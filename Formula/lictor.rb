class Lictor < Formula
  desc "Policy gate + output minifier for coding-agent tool calls"
  homepage "https://github.com/sladg/lictor"
  url "https://github.com/sladg/lictor/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "a7fe323fa49cf714752c0bde8e6315032e135117ac76422e86caa522f18f57db"
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
