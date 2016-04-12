import sys
from IPython.lib import passwd
def main(arg):
  a=passwd(arg)
  print a
  return a

if __name__ == "__main__":
  main(sys.argv[1])