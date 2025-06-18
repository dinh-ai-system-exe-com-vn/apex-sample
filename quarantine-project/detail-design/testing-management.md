# Testing Management

Quản lý xét nghiệm và kết quả.

- **Page ID:** 40 – *Test List* / 41 – *Test Form*

- **Phạm vi:** chỉ dùng trong trạng thái **PANDEMIC**.

- **Danh sách xét nghiệm**
  - Interactive Report hiển thị `TEST_ID`, `TRAVELER_ID`, `TEST_DATE`, `RESULT`, `ALERT_FLAG`.
  - Nút **Add Test** mở trang form (**Test Form**, Page 41).

- **Form đăng ký/xử lý kết quả** (Test Form – Page 41)
  - Chọn `TRAVELER_ID` (lov từ bảng `TRAVELERS` có lọc theo `ENTRY_DATE` gần nhất).
  - `TEST_DATE` mặc định SYSDATE, `TEST_TYPE` (PCR/Antigen...), `RESULT`, `RESULT_DATE`.
  - Dynamic Action: khi chọn `RESULT` = 'Positive', tự động đặt `ALERT_FLAG = 'Y'` và bật thông báo xác nhận.
  - Khi `ALERT_FLAG` được gán 'Y', tạo thêm bản ghi vào bảng `ACTIVITY_LOGS` để dashboard thống kê ca nghi nhiễm.
  - Validations đảm bảo `RESULT` nhập sau `TEST_DATE` và không được bỏ trống.

- **Các bước xử lý**
  1. Người dùng chọn traveler cần xét nghiệm, nhập thông tin ngày, loại test.
  2. Lưu dữ liệu vào bảng `TEST_ORDERS` với trạng thái mặc định (Pending).
  3. Sau khi có kết quả, cập nhật record; nếu dương tính, `ALERT_FLAG` hiển thị cảnh báo trên Dashboard.

- **Liên kết**: mỗi `TEST_ORDER` liên kết 1-n với bản ghi khai báo y tế thông qua `TRAVELER_ID`. Báo cáo dịch lấy dữ liệu từ bảng này.
