class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.16/flightstack-1.3.16-macos-arm64.tar.gz"
      sha256 "2072b9a811d909436b087db2e5d4b2f28c1ccad5d7b199259de00d0465533bdb"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.16/flightstack-1.3.16-macos-x64.tar.gz"
      sha256 "044391119b1166e77e9f07d246247bdc684bfc027e48800c85b0bbdd69a9c8ea"
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
