{ lib, buildPythonPackage, fetchPypi }:

buildPythonPackage rec {
  pname = "pymongo";
  version = "3.7.2";

  src = fetchPypi {
    inherit pname version;
    sha256 = "8c74e2a9b594f7962c62cef7680a4cb92a96b4e6e3c2f970790da67cc0213a7e";
  };

  # Tests call a running mongodb instance
  doCheck = false;

  meta = with lib; {
    homepage = https://github.com/mongodb/mongo-python-driver;
    license = licenses.asl20;
    description = "Python driver for MongoDB";
  };
}
