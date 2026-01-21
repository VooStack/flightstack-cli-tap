class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.61"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.61/flightstack-1.2.61-macos-arm64.tar.gz"
      sha256 "56913fdc3f38f5b94b8754203e22b3184c193408e2b2c84a052763a8531dc2b7"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.61/flightstack-1.2.61-macos-x64.tar.gz"
      sha256 "0e5c57225670e8a2586bdfdd0ca3fa007476d370aa0777b30bbcf5f05caac2d9"
    end
  end

  def install
    bin.install "flightstack"
    bin.install "flightstack-agent"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
