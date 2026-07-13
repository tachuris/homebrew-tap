class Fresnel < Formula
  desc "Personal productivity app for tracking recurring practices and tasks"
  homepage "https://github.com/tachuris/fresnel"
  version "0.0.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.16/fresnel-darwin-arm64"
      sha256 "c934e01c95b0f2ad9abdf515142f7ca8f72255c9f17ecf21f6ad93b8ec7560d2"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.16/fresnel-darwin-x64"
      sha256 "ac1244de4560eb87ed4798c27e31368b439783bee0e5297da46db47073e80baa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.16/fresnel-linux-arm64"
      sha256 "23f4df8512e29e63990c2f3a308e38c403ca68deb259533409ffe521b2e679bd"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.16/fresnel-linux-x64"
      sha256 "34a04053692b5c53f3599f4d4d5686b83113668f2c73da2eda0b15683c0a1b6f"
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
