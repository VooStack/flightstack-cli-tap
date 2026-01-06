class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.47/flightstack-1.2.47-macos-arm64.tar.gz"
      sha256 "3809b3b5c96b92af073f96d7443580bf4a55506dd07d37e30c9e7a4ef8e9f695"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.47/flightstack-1.2.47-macos-x64.tar.gz"
      sha256 "aa4d6d84a55bedf57c7f4aea0715b1d6ab31ed492635b449baf2726da8eb4c50"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
