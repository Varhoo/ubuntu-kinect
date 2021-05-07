from time import time
import freenect


def main():
    timestamp = int(time())
    fps = 0

    while True:
       image, _ = freenect.sync_get_video()
       if int(time()) != timestamp:
          print(image.shape, "fps:", fps)
          fps, timestamp = 0, int(time())
       fps += 1

if __name__=="__main__":
    main()
