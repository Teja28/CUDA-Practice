#include "opencv2/highgui/highgui.hpp"

int main(int argc, char** argv) {
  cv::Mat srcImg = cv::imread(argv[1], -1); //read image with 4 channels
  if(srcImg.empty()){
    return -1;
  }

  namedWindow("Before", cv::WINDOW_AUTOSIZE);
  imshow("Before", srcImg);

  cv::waitKey(0);
  cv::destroyWindow("Before");

  imshow("After", srcImg);
  cv::waitKey(0);
  cv::destroyWindow("After");

}
