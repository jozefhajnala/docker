packageName=$1
git clone https://github.com/jozefhajnala/$packageName

R CMD build $packageName
R CMD INSTALL $packageName

builtPackage=$(ls | grep $package.*.tar.gz | head -n 1)

R CMD check $builtPackage
