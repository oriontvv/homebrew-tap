class rusty-broom < Formula
  desc "CLI tool which can convert different formats"
  homepage "https://github.com/oriontvv/rusty-broom"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/oriontvv/rusty-broom/releases/download/0.2.0/rusty-broom-mac.tar.gz"
    sha256 "f57c069ebcb28e14c85ba8904b839b67bf5fa0b5cad1f8efbc52a92408eef395"
  end

  on_linux do
    url "https://github.com/oriontvv/rusty-broom/releases/download/0.2.0/rusty-broom-linux-musl.tar.gz"
    sha256 "dab11b8d8313883041f5c181c6465eeb6c29f4e48c907881a8c86f082d65d3af"
  end

  def install
    bin.install "rusty-broom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rusty-broom --version")
  end
end
