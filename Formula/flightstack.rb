class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.20/flightstack-1.2.20-macos-arm64.tar.gz"
      sha256 "ae9bbce31a15a72d0c54a2aaea593802871ed11d2e7e321d3e541df7b571d13c"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.20/flightstack-1.2.20-macos-x64.tar.gz"
      sha256 "3892ae1e201f12e4f6e94f01c358e7e5f5bdbd372a417bdadc932601e8fc648b"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
