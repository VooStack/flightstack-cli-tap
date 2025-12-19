class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.34/flightstack-1.2.34-macos-arm64.tar.gz"
      sha256 "946d7b49a86bd29173d93f1eee1f9319740afb5d9284ac2b83801d4663575ee0"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.34/flightstack-1.2.34-macos-x64.tar.gz"
      sha256 "a746e1d9ef8991ce966d86fe74bcd1de0706b576b86fe1cd33ebfbdf0079f918"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
