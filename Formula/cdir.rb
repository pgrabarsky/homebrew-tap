class Cdir < Formula
    desc "cdir allows you to quickly navigate to a directory recorded into your history"
    homepage "https://github.com/AmadeusITGroup/cdir"    
    url "https://github.com/AmadeusITGroup/cdir/releases/download/v1.0.0/cdir-aarch64-apple-darwin.tar.gz"
    sha256 "964493568e1119ff7e901d472cc3252e8512a75dc9d1f4b6216c34509859c419"
    license "Apache-2.0 license"


    def install
        cp_r ".", prefix, remove_destination: true
        bin.install "cdir"
        bin.install "cdir_funcs.sh"
        chmod 0555, bin/"cdir_funcs.sh"
    end

end
