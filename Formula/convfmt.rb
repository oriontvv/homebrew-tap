class Convfmt < Formula
  desc "CLI tool which can convert different formats"
  homepage "https://github.com/oriontvv/convfmt"
  version "2.3.4"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/oriontvv/convfmt/releases/download/2.3.4/convfmt-mac.tar.gz"
    sha256 "ceb296a142b313a1a339c3c47313458c658e58fb998b6bbece04e815582a1c3a"
  end

  on_linux do
    url "https://github.com/oriontvv/convfmt/releases/download/2.3.4/convfmt-linux-musl.tar.gz"
    sha256 "eb9466bcbb2dc4f892f07b4c7890caabc9d3355eede2d7fb0f85cae59f8b0eef"
  end

  def install
    bin.install "convfmt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/convfmt --version")
  end
end
