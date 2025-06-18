# Lịch Triển Khai 5 Ngày

Tài liệu này chia lịch làm việc cho 7 thành viên phát triển hệ thống kiểm dịch mẫu trên Oracle APEX. Mỗi dev phụ trách một module và cần hoàn tất trong 5 ngày.

## Phân công module
- **Dev 1:** State Management
- **Dev 2:** Entry Management
- **Dev 3:** Health Declaration
- **Dev 4:** Testing Management
- **Dev 5:** Pandemic Reporting
- **Dev 6:** Regular Reporting
- **Dev 7:** Dynamic Navigation

## Kế hoạch từng ngày
| Ngày | Dev1 - State Management | Dev2 - Entry Mgmt | Dev3 - Health Declaration | Dev4 - Testing | Dev5 - Pandemic Report | Dev6 - Regular Report | Dev7 - Navigation |
|-----|-------------------------|------------------|--------------------------|---------------|-----------------------|----------------------|------------------|
| **Ngày 1** | - Tạo bảng SYSTEM_STATUS, STATUS_HISTORY.<br>- Trang chuyển trạng thái. | - Tạo bảng TRAVELERS.<br>- Trang CRUD cơ bản. | - Tạo bảng HEALTH_DECLARATIONS.<br>- Trang khai báo ban đầu. | - Tạo bảng TEST_ORDERS.<br>- Trang đăng ký test. | - Chuẩn bị view báo cáo dịch.<br>- Trang báo cáo mẫu. | - Chuẩn bị view báo cáo bình thường.<br>- Trang báo cáo mẫu. | - Khởi tạo menu động, layout chung. |
| **Ngày 2** | - Hoàn thiện logic đổi trạng thái và ghi log. | - Bổ sung validation nhập cảnh. | - Thêm trường mở rộng khi trạng thái `PANDEMIC`. | - Xử lý lưu kết quả test và cờ cảnh báo. | - Thiết kế biểu đồ thống kê dịch. | - Thiết kế báo cáo thống kê nhập cảnh. | - Điều kiện ẩn/hiện menu theo trạng thái. |
| **Ngày 3** | - Gắn Application Item để page đọc trạng thái. | - Trigger cập nhật khi thêm traveler. | - Dynamic Action ẩn/hiện trường. | - Liên kết TEST_ORDERS với TRAVELERS. | - Hoàn thiện xuất Excel/PDF. | - Hoàn thiện báo cáo chi tiết. | - Hoàn thiện sidebar và breadcrumbs. |
| **Ngày 4** | - Kiểm thử chuyển trạng thái toàn app. | - Kiểm thử CRUD và liên kết khai báo y tế. | - Kiểm thử form ở hai trạng thái. | - Kiểm thử cảnh báo ca dương tính. | - Kiểm thử báo cáo dịch. | - Kiểm thử báo cáo thường. | - Kiểm thử điều hướng & phân quyền. |
| **Ngày 5** | - Hoàn tất tài liệu hướng dẫn và log. | - Sửa lỗi nhập cảnh. | - Sửa lỗi khai báo y tế. | - Sửa lỗi xét nghiệm và cảnh báo. | - Hoàn thiện tài liệu báo cáo dịch. | - Hoàn thiện tài liệu báo cáo thường. | - Tối ưu giao diện, hỗ trợ các dev khác demo. |
