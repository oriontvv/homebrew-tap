class RustyBroom < Formula
    desc "CLI tool which can convert different formats"
    homepage "https://github.com/oriontvv/rusty-broom"
    version "{{VERSION}}"
    license "Apache-2.0"
  
    on_macos do
      url "https://github.com/oriontvv/rusty-broom/releases/download/{{VERSION}}/rusty-broom-mac.tar.gz"
      sha256 "{{SHA256_MAC}}"
    end
  
    on_linux do
      url "https://github.com/oriontvv/rusty-broom/releases/download/{{VERSION}}/rusty-broom-linux-musl.tar.gz"
      sha256 "{{SHA256_LINUX}}"
    end
  
    def install
      bin.install "rusty-broom"
    end
  
    test do
      assert_match version.to_s, shell_output("#{bin}/rusty-broom --version")
    end
  end
