class Fresnel < Formula
  desc "Personal productivity app for tracking recurring practices and tasks"
  homepage "https://github.com/tachuris/fresnel"
  version "0.0.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.21/fresnel-darwin-arm64"
      sha256 "0235b2102c8f90af9a69496ed18b3da54a609930bdcd3bf832f4079d67ac3c11"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.21/fresnel-darwin-x64"
      sha256 "f2e25cbc5b7538faa7e5d30d4b672129c333d8c2605df3bf0899d8173249e52e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.21/fresnel-linux-arm64"
      sha256 "2a0f5a96e518cc6cb0982f9f1ba787ab9451d9491d08eed476eaf01af49c2f71"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.21/fresnel-linux-x64"
      sha256 "88e4cd3bb81786e25eb283ac25ce278764977575d7296deea0272ab758e80ea7"
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
