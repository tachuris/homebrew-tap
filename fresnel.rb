class Fresnel < Formula
  desc "Personal productivity app for tracking recurring practices and tasks"
  homepage "https://github.com/tachuris/fresnel"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.4/fresnel-darwin-arm64"
      sha256 "283bba9ae73cd53c0a72743e94d8b801d540b82eda4846afe6c1352c935f8d00"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.4/fresnel-darwin-x64"
      sha256 "9f0a998217afe8713f302f1b694653dc456bf52fa030f48b1354a67dd28897f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.4/fresnel-linux-arm64"
      sha256 "36162d5220d8bfd2f695a0c8a07b2a0c59413c8f8319754147244c664f694e31"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.4/fresnel-linux-x64"
      sha256 "ee162203b81a49495bf5aaccc61e83cd5f10f5e72be53b50ca06799cd978ed06"
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
