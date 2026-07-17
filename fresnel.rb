class Fresnel < Formula
  desc "Personal productivity app for tracking recurring practices and tasks"
  homepage "https://github.com/tachuris/fresnel"
  version "0.0.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.22/fresnel-darwin-arm64"
      sha256 "1ac6f0cd8e22dd21629645e747311631102d075e91f6f1f47c415ed5eff47563"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.22/fresnel-darwin-x64"
      sha256 "3799d632315cf1f6245ad077e604efd9f9d52d646935e85bca8fe45a675b1ea7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.22/fresnel-linux-arm64"
      sha256 "a460b44f01bc504e48fec691264d697e8a85cbcdf69388502e0593f15a3f32e8"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.22/fresnel-linux-x64"
      sha256 "6aa7101c38c5d04f46a2ff6180f99a8ed5fbd54ae0ec30bc602d132f6be8f354"
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
