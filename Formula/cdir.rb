class Cdir < Formula
    desc "cdir allows you to quickly navigate to a directory recorded into your history"
    homepage "https://github.com/AmadeusITGroup/cdir"    
    url "https://github.com/AmadeusITGroup/cdir/releases/download/v0.0.5/cdir-aarch64-apple-darwin.tar.gz"
    sha256 "31ce3a222b439e5c1118649d7be3caf776991be948148b84be922569049c930a"
    license "Apache-2.0 license"


    def install
        cp_r ".", prefix, remove_destination: true
        bin.install "cdir"
        bin.install "cdir_funcs.sh"
        chmod 0555, bin/"cdir_funcs.sh"
    end

end
