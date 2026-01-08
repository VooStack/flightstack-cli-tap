class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.52"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.52/flightstack-1.2.52-macos-arm64.tar.gz"
      sha256 "cf26032198a6f60b80fc5010acb54a931dfa6012ac6a9ee74ea0f82b903f85e9"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.52/flightstack-1.2.52-macos-x64.tar.gz"
      sha256 "84f9839d443b8b06973c5be78711d27f33912c1ec7caaceaf39294ed56ce2942"
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
