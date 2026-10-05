cask "hugin-cyber" do
  version "0.4.42"

  on_arm do
    sha256 "676eac49f2a476b23796083dfe9dc323d3a6d5eedb7adbc51d11398499c8fdb5"
    url "https://github.com/HuginCyber/Hugin/releases/download/v#{version}/hugin-desktop-darwin-aarch64.app.tar.gz",
        verified: "github.com/HuginCyber/Hugin/"
  end

  on_intel do
    sha256 "9fd941ab21927417ce29d7c1e28ddad53ad6fbb755b76f39d74893c87cb99e7f"
    url "https://github.com/HuginCyber/Hugin/releases/download/v#{version}/hugin-desktop-darwin-x86_64.app.tar.gz",
        verified: "github.com/HuginCyber/Hugin/"
  end

  name "Hugin"
  desc "Intercepting proxy, vulnerability scanner and AI agent for web security testing"
  homepage "https://hugin.nu"

  app "Hugin.app"

  zap trash: [
    "~/.hugin",
  ]
end
