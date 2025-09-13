class DrushLauncher < Formula
  desc "Small wrapper around Drush for your global $PATH"
  homepage "https://github.com/webflo/drush-launcher"
  url "https://github.com/webflo/drush-launcher/archive/refs/tags/2.0.0.tar.gz"
  sha256 "cc744ea0f9bdecc21254c9780b00ff4e7b060f9a7584627360c3901de28cfb5c"
  license "GPL-2.0-or-later"

  def install
    bin.install "drush" => "drush"
  end

  test do
    system "#{bin}/drush", "--drush-launcher-version"
  end
end
