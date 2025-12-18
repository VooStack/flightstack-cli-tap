class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.21/flightstack-1.2.21-macos-arm64.tar.gz"
      sha256 "dcc8894a87dc99cdf999bfd5affef9ec666820dd2ebb7995ac4f3e82d38088fd"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.21/flightstack-1.2.21-macos-x64.tar.gz"
      sha256 "72fba3f354932771d84d4071ff8ae10f8cb156544de6a2280fb0dc9e593c5f6c"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
