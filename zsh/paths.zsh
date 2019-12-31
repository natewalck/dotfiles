if [ $(uname) = "Linux" ]; then
else
  export PATH=/Library/Frameworks/Python.framework/Versions/3.7/bin:$PATH
  export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH
fi
