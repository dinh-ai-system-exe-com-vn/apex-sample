# Regular Reporting

Báo cáo định kỳ khi hệ thống ở trạng thái bình thường.

- **Page ID:** 60 – *Regular Report*

- **Mục đích**
  - Theo dõi lượng khách nhập cảnh nhằm hỗ trợ thống kê định kỳ cho cơ quan chức năng.
  - Không liên quan tới cảnh báo dịch, tập trung vào số liệu hành chính.

- **Thành phần trang**
  1. **Interactive Report**
     - Truy vấn từ bảng `TRAVELERS`, nhóm theo ngày hoặc tuần tùy tham số chọn `REPORT_MODE` (Daily/Weekly).
     - Hiển thị `REPORT_DATE`, `TOTAL_ENTRY`, có link drill down tới danh sách traveler cụ thể của ngày/tuần đó.
  2. **Line Chart**
     - Sử dụng dữ liệu `REPORT_DATE` làm trục X, `TOTAL_ENTRY` làm trục Y để thể hiện xu hướng trong 30 ngày gần nhất.
  3. **Filter Region**
     - Cho phép lọc theo quốc tịch, giới tính, khoảng thời gian.

- **Điều kiện hiển thị**
  - Menu và trang chỉ xuất hiện khi `SYSTEM_STATUS = NORMAL`.
  - Nếu admin chuyển trạng thái sang `PANDEMIC`, người dùng truy cập trực tiếp sẽ bị redirect về Dashboard kèm thông báo.

- **Nguồn dữ liệu**
  - Bảng `TRAVELERS` kết hợp hàm tổng hợp COUNT để tính số người nhập cảnh.
