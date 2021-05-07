import freenect


def main():
    while True:
       image, _ = freenect.sync_get_video()
       print(image.shape)

if __name__=="__main__"
    main()
