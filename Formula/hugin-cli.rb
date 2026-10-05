class HuginCli < Formula
  desc "Intercepting proxy and vulnerability scanner CLI"
  homepage "https://hugin.nu"
  version "0.4.42"
  license :cannot_represent

  on_arm do
    url "https://github.com/HuginCyber/Hugin/releases/download/v#{version}/hugin-cli-darwin-aarch64.tar.gz"
    sha256 "a637fa331a5f1e918ede7dd8dac85285104544d2f4a1c7af9c8bc7cf44bff795"
  end

  on_intel do
    url "https://github.com/HuginCyber/Hugin/releases/download/v#{version}/hugin-cli-darwin-x86_64.tar.gz"
    sha256 "a410a39454712c339c725a3ba60a7d0f77f9d4f1391315577294051aa8fd2dbc"
  end

  def install
    bin.install "hugin"
  end

  test do
    assert_match "hugin", shell_output("#{bin}/hugin --version")
  end
end
