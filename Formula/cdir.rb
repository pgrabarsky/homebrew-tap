class Cdir < Formula
    desc "cdir allows you to quickly navigate to a directory recorded into your history"
    homepage "https://github.com/AmadeusITGroup/cdir"    
    url "https://github.com/AmadeusITGroup/cdir/releases/download/v0.0.9/cdir-aarch64-apple-darwin.tar.gz"
    sha256 "44148a02a6a42dbc1f701eac2c650709df9c14753582f2f7f3a32434be44928c"
    license "Apache-2.0 license"


    def install
        cp_r ".", prefix, remove_destination: true
        bin.install "cdir"
        bin.install "cdir_funcs.sh"
        chmod 0555, bin/"cdir_funcs.sh"
    end

end
