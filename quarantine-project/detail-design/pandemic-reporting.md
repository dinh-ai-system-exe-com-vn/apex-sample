# Pandemic Reporting

Báo cáo nhanh trong thời dịch.

- **Page ID:** 50 – *Pandemic Report*

- **Mục tiêu**
  - Cung cấp cái nhìn tức thời về số ca nghi nhiễm và tình hình xét nghiệm.
  - Hỗ trợ xuất báo cáo định kỳ cho Ban chỉ đạo.

- **Khu vực báo cáo**
  1. **Interactive Report**
     - Truy vấn gộp trên bảng `TEST_ORDERS` với điều kiện `ALERT_FLAG = 'Y'` để đếm ca nghi nhiễm theo ngày.
     - Hiển thị cột: `REPORT_DATE`, `TOTAL_TEST`, `ALERT_COUNT`.
     - Tùy chọn lọc theo `REPORT_DATE_FROM/TO` và quốc tịch của traveler.
  2. **Chart Region**
     - Biểu đồ cột (Bar) so sánh `ALERT_COUNT` của 7 ngày gần nhất.
  3. **Export Button**
     - Nút **Export Excel** sử dụng tính năng download của Interactive Report.
     - Nút **Export PDF** cấu hình PL/SQL để xuất APEX Office Printing (AOP).

- **Điều kiện hiển thị**
  - Region và menu chỉ kích hoạt khi `SYSTEM_STATUS` = `PANDEMIC`.
  - Nếu người dùng không có quyền xem dữ liệu y tế, hiển thị thông báo quyền hạn.

- **Nguồn dữ liệu**
  - `TEST_ORDERS` (kết quả xét nghiệm, flag dương tính)
  - `HEALTH_DECLARATIONS` (để lọc thông tin quốc tịch, vùng dịch)
