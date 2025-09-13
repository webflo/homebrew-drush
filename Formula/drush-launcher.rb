class DrushLauncher < Formula
  desc "Small wrapper around Drush for your global $PATH"
  homepage "https://github.com/webflo/drush-launcher"
  url "https://github.com/webflo/drush-launcher/archive/refs/tags/2.1.0.tar.gz"
  sha256 "ed7cd145151ac7fe5f2b27ef1ec04f5a40a2d441e42135790ce12471cb8e8dd7"
  license "GPL-2.0-or-later"

  def install
    bin.install "drush" => "drush"
  end

  test do
    system "#{bin}/drush", "--drush-launcher-version"
  end
end
