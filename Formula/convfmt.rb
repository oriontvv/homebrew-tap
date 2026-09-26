class Convfmt < Formula
  desc "CLI tool which can convert different formats"
  homepage "https://github.com/oriontvv/convfmt"
  version "2.4.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/oriontvv/convfmt/releases/download/2.4.0/convfmt-mac.tar.gz"
    sha256 "b3f17641e1129bc594d0402e72fd557dcbec1341992648b07c720746da756d1a"
  end

  on_linux do
    url "https://github.com/oriontvv/convfmt/releases/download/2.4.0/convfmt-linux-musl.tar.gz"
    sha256 "16f08fcfba4e0b1d24a6f5893d7ca5f129f4d13f8106196b8f4412646a230366"
  end

  def install
    bin.install "convfmt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/convfmt --version")
  end
end
