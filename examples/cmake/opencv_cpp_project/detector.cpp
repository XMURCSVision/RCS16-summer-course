#include "detector.hpp"

void detector::get_match_armor(std::vector<std::vector<cv::Point>> &_contours, const cv::Mat &raw_img,
                                        std::vector<cv::Point2f> &target_out, int area_thresh)
{
    _contours.clear();
    cv::findContours(raw_img, _contours, cv::RETR_LIST, cv::CHAIN_APPROX_SIMPLE);
    target_out.clear();
    for (size_t i = 0; i < _contours.size(); i++)
    {
        float area = cv::contourArea(_contours[i]);
        if (area < area_thresh)
        continue;
        cv::RotatedRect rrect = cv::minAreaRect(_contours[i]);
        if (!is_light(rrect))
        continue;
        // 执行装甲板匹配
        for (size_t j = i + 1; j < _contours.size(); j++)
        {
            double area = contourArea(_contours[j]);
            if (area < area_thresh)
                continue;

            cv::RotatedRect rrectA = cv::minAreaRect(_contours[j]);

            if (!is_light(rrectA))
                continue;
            float arm_h, arm_w, A_h, A_w;
            if (rrect.size.height > rrect.size.width)
            {
                arm_h = rrect.size.height;
                arm_w = rrect.size.width;
            }
            else
            {
                arm_h = rrect.size.width;
                arm_w = rrect.size.height;
            }
            if (rrectA.size.height > rrectA.size.width)
            {
                A_h = rrectA.size.height;
                A_w = rrectA.size.width;
            }
            else
            {
                A_h = rrectA.size.width;
                A_w = rrectA.size.height;
            }
            float armor_ratio = arm_h < A_h ? arm_h / A_h : A_h / arm_h;

            float avg_armor_height = (arm_h + A_h) / 2;
            float distance = sqrt((rrect.center.x - rrectA.center.x) * (rrect.center.x - rrectA.center.x) +
                            (rrect.center.y - rrectA.center.y) * (rrect.center.y - rrectA.center.y));
            float center_distance = distance / avg_armor_height;
            bool center_distance_ok = (center_distance < 2.8 && center_distance > 0.8) ||
                                        (center_distance < 4.3 && center_distance > 3.2);

            float vertical_angle = std::abs(std::atan((rrectA.center.y - rrect.center.y) /
                                                        (rrectA.center.x - rrect.center.x))) /
                                    CV_PI * 180;
            bool angle_ok = vertical_angle < 45;

            if (!angle_ok || !center_distance_ok)
                continue;
            cv::Point2f *vertices = new cv::Point2f[4];
            rrect.points(vertices);
            cv::Point2f *verticesA = new cv::Point2f[4];
            rrectA.points(verticesA);
            target_out.push_back(cv::Point2f((int)((vertices[0].x + vertices[3].x) / 2), (int)((vertices[0].y + vertices[3].y) / 2)));
            target_out.push_back(cv::Point2f((int)((vertices[1].x + vertices[2].x) / 2), (int)((vertices[1].y + vertices[2].y) / 2)));
            target_out.push_back(cv::Point2f((int)((verticesA[0].x + verticesA[3].x) / 2), (int)((verticesA[0].y + verticesA[3].y) / 2)));
            target_out.push_back(cv::Point2f((int)((verticesA[1].x + verticesA[2].x) / 2), (int)((verticesA[1].y + verticesA[2].y) / 2)));
            break;
        }
    }
}
bool detector::is_light(cv::RotatedRect &rrect)
{
    float ratio = rrect.size.width / rrect.size.height;
    ratio = rrect.size.width > rrect.size.height ? 1.0 / ratio : ratio;
    float angle = rrect.angle;
    float delta_angle = rrect.size.width > rrect.size.height ? std::fabs(90.0 - angle) : std::fabs(angle);
    return ratio > 0.1 && ratio < 0.55 && delta_angle < 33.0;
}