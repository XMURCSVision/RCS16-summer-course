#ifndef POST_PROCESS_H
#define POST_PROCESS_H

#include <vector>
#include "cmath"
#include "opencv2/opencv.hpp"

#define PI 3.14

class detector
{
public:
void get_match_armor(std::vector<std::vector<cv::Point>> &_contours, const cv::Mat &raw_img,
                                    std::vector<cv::Point2f> &target_out, int area_thresh);
private:
bool is_light(cv::RotatedRect &rrect);
};

#endif
