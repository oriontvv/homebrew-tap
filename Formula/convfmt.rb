class Convfmt < Formula
    desc "CLI tool which can convert different formats"
    homepage "https://github.com/oriontvv/convfmt"
    version "{{VERSION}}"
    license "Apache-2.0"
  
    on_macos do
      url "https://github.com/oriontvv/convfmt/releases/download/{{VERSION}}/convfmt-mac.tar.gz"
      sha256 "{{SHA256_MAC}}"
    end
  
    on_linux do
      url "https://github.com/oriontvv/convfmt/releases/download/{{VERSION}}/convfmt-linux-musl.tar.gz"
      sha256 "{{SHA256_LINUX}}"
    end
  
    def install
      bin.install "convfmt"
    end
  
    test do
      assert_match version.to_s, shell_output("#{bin}/convfmt --version")
    end
  end
