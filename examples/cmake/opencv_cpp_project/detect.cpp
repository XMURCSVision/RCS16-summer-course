#include "detector.hpp"

int main(int argc,char* argv[])
{
    cv::VideoCapture capture(argv[1]);
    std::vector<cv::Point2f> target_out;
    detector det;
    std::vector<std::vector<cv::Point>> contours;
    int size=0;
    while(true)
    {
        cv::Mat frame;
        capture >> frame;
        cv::Mat gray;
        cv::cvtColor(frame,gray,cv::COLOR_BGR2GRAY);
        cv::Mat threshold;
        cv::threshold(gray,threshold,125,255,cv::THRESH_BINARY);
        det.get_match_armor(contours,threshold,target_out,100);
        if(size!=target_out.size()){
            std::vector<cv::Point2f> dots;
            dots.assign(target_out.end()-4,target_out.end());
            cv::polylines(frame,dots,true,cv::Scalar(255,0,0));
        }
        cv::imshow("results",frame);
        cv::waitKey(10);
        size=target_out.size();
    }
}