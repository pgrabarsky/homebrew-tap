class Cdir < Formula
    desc "cdir allows you to quickly navigate to a directory recorded into your history"
    homepage "https://github.com/AmadeusITGroup/cdir"    
    url "https://github.com/AmadeusITGroup/cdir/releases/download/v0.0.11/cdir-aarch64-apple-darwin.tar.gz"
    sha256 "4b86bb75d0f4ecd334915897f048df04d63f8831e97b490be60ac9f1049322be"
    license "Apache-2.0 license"


    def install
        cp_r ".", prefix, remove_destination: true
        bin.install "cdir"
        bin.install "cdir_funcs.sh"
        chmod 0555, bin/"cdir_funcs.sh"
    end

end
