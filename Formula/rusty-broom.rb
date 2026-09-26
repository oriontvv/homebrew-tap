class RustyBroom < Formula
  desc "CLI tool which can convert different formats"
  homepage "https://github.com/oriontvv/rusty-broom"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/oriontvv/rusty-broom/releases/download/0.2.1/rusty-broom-mac.tar.gz"
    sha256 "721c1d7c6a8ba983a75ef1cd7e553c16cfb9d2abe6b9e4a3b69d6d8c4ec86f37"
  end

  on_linux do
    url "https://github.com/oriontvv/rusty-broom/releases/download/0.2.1/rusty-broom-linux-musl.tar.gz"
    sha256 "151574af8f057673ab59fcb13453d10e337d75dd44d4925f6e9b4610f1f3978c"
  end

  def install
    bin.install "rusty-broom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rusty-broom --version")
  end
end
