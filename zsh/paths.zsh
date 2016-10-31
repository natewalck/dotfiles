if [ $(uname) = "Linux" ]; then
else
  export PATH=/Library/Frameworks/Python.framework/Versions/3.5/bin:$PATH
  export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
fi

