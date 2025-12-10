class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.17/flightstack-1.2.17-macos-arm64.tar.gz"
      sha256 "f68e178f2510572ee6af30b2c2262e4af0ee44b7370c425e13c8b83f3addbc58"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.17/flightstack-1.2.17-macos-x64.tar.gz"
      sha256 "01b89cf89a025f115ebb3ec835c5afe1fa63e830fa736a437f2e8362b6eb2380"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
