class Fresnel < Formula
  desc "Personal productivity app for tracking recurring practices and tasks"
  homepage "https://github.com/tachuris/fresnel"
  version "0.0.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.19/fresnel-darwin-arm64"
      sha256 "fe992637d8425f21d25293cff6c4292bb558e4b0703bacee5e706f58d227d021"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.19/fresnel-darwin-x64"
      sha256 "5ef8129bd20129debb31b317db2beb98ff66218f59e1d99bd73ba02fcf09595c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.19/fresnel-linux-arm64"
      sha256 "2a44706750c82ce30c9d80ab2baadb7fb2e6476d5d0e8c82472acb85bf1dcc1d"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.19/fresnel-linux-x64"
      sha256 "5e594888de8e5ca71a58d00a517edeb26c0842d5b4a90b49e079217fd21fabb4"
    end
  end

  def install
    bin.install Dir["fresnel-*"].first => "fresnel"
    bin.install_symlink bin/"fresnel" => "fr"
  end

  test do
    assert_match "fresnel v#{version}", shell_output("#{bin}/fresnel --version")
    assert_match "fresnel v#{version}", shell_output("#{bin}/fr --version")
  end
end
