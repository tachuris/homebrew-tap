class Fresnel < Formula
  desc "Personal productivity app for tracking recurring practices and tasks"
  homepage "https://github.com/tachuris/fresnel"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.7/fresnel-darwin-arm64"
      sha256 "73ae64951b582d74127be55becdc7d441c51c664ee48a80bd241911fbcceb294"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.7/fresnel-darwin-x64"
      sha256 "30b243634441736fc8c72fbb9cd366db575df0b76107af875d33e3848f1618f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.7/fresnel-linux-arm64"
      sha256 "c885ca0f5381a15b18587689da826c5f3ff370df8edd9d060d48872d61bedf2f"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.7/fresnel-linux-x64"
      sha256 "387ab4934516dd4bf1a63ed3a957e75da7d3204d2205e23bf34091d90afdc0f8"
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
