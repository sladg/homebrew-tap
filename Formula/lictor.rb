class Lictor < Formula
  desc "Policy gate + output minifier for coding-agent tool calls"
  homepage "https://github.com/sladg/lictor"
  url "https://github.com/sladg/lictor/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "4315f857b974f1e4da16804bd6ed9a0a1c4421807b0787bf091a88247ae0b0f2"
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
