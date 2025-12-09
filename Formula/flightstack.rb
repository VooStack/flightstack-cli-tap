class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.10/flightstack-1.2.10-macos-arm64.tar.gz"
      sha256 "e75e6cc6a19c5ecf197170c52b2beee6a8e0d6ffbe282edacaa3d0194caefc37"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.10/flightstack-1.2.10-macos-x64.tar.gz"
      sha256 "bd1f427b36e45ce8bd47ed1576b47322f2deb14f3d374a05f325cd8df46d7ed1"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
