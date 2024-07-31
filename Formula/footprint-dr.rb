class FootprintDr < Formula
  desc "Footprint Disaster Recovery CLI"
  homepage "https://docs.onefootprint.com/"

  version = "0.1.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/onefootprint/footprint-dr-releases/releases/download/#{version}/footprint-dr-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "818b08295352474bc7817753506dc27fca067ae566c5e4eb9135e9a0197533a2"

      def install
        bin.install "footprint-dr"
      end
    end
  end
end
