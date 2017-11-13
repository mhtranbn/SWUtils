pod init open -a Xcode Podfile
pod spec create SWUtil
git init
git add . 
git commit -m "Initial commit" 
git tag 0.1.0 
git remote add origin https://github.com/mhtranbn/SWUtils.git
git push -u origin master --tags
pod repo add RSUtils https://github.com/mhtranbn/SWUtils.git
pod repo push SWUtil SWUtil.podspec --allow-warnings
pod lib lint --allow-warnings
pod repo update
pod trunk register hoangtm@runsystem.net 'hoangtm' --description='macbook pro'
pod trunk push SWUtil.podspec --allow-warnings --verbose