class DrushLauncher < Formula
    desc "Small wrapper around Drush for your global $PATH"
    homepage "https://github.com/drush-ops/drush-launcher"
    url "https://github.com/drush-ops/drush-launcher/releases/download/0.10.1/drush.phar"
    sha256 "d466e4268dcb2f3465feeb01518d2770c4be8ca533e010b678799bbd14dd90c5"
    license "GPL-2.0-or-later"
  
    uses_from_macos "php"
    depends_on "php" => :test
  
    def install
      bin.install "drush.phar" => "drush"
    end
  
    test do
      system "#{bin}/drush", "--drush-launcher-version"
    end
  end
