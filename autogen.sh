# !/bin/sh -e
echo "Detecting autoreconf ..."
AUTORECONF=`which autoreconf 2>/dev/null`
if test $? -ne 0; then
  echo "No 'autoreconf' found. You must install the autoconf package."
  exit 1
fi
echo "AUTORECONF: $AUTORECONF"

echo "Detecting git ..."
GIT=`which git 2>/dev/null`
if test $? -ne 0; then
  echo "No 'git' found. You must install the git package."
  exit 1
fi
echo "GIT: $GIT"

echo "Executing git submodule init ..."
$GIT submodule init
echo "Executing git submodule update --remote ..."
$GIT submodule update --remote

# create m4 before autoreconf
mkdir m4 2>/dev/null

echo "Executing autoreconf --install --force --symlink ..."
$AUTORECONF --install --force --symlink || exit $?

echo
echo "Ready to ./configure"
echo
