class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.41/flightstack-1.2.41-macos-arm64.tar.gz"
      sha256 "9a9ba8fede045d88ba0299dce80a9baaa79bab885b72c9fa98d9a984d7266955"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.41/flightstack-1.2.41-macos-x64.tar.gz"
      sha256 "19147d66b205742258e3e9438be851950375c85d113b206ec3faa16b54ffee7e"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
