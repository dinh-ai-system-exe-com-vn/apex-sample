# Entry Management

Quản lý người nhập cảnh, hiển thị ở mọi trạng thái hệ thống. Đây là điểm khởi đầu
cho hầu hết thao tác nhập liệu khác.

- **Page ID:** 20 – *Entry List* / 21 – *Entry Form* / 22 – *Entry Detail*

- **Các vùng chính:**
  - *Region 1 – Bộ lọc tìm kiếm*: chứa các item tìm theo `FULL_NAME`, `PASSPORT_NO`,
    `ENTRY_DATE_FROM`, `ENTRY_DATE_TO` và nút **Search**.
  - *Region 2 – Danh sách (Interactive Report)*: liệt kê bảng `TRAVELERS` gồm các
    cột `FULL_NAME`, `PASSPORT_NO`, `NATIONALITY`, `ENTRY_DATE`, `FLIGHT_NO`.
  - *Button Add*: mở Form nhập (**Entry Form**, Page 21).

- **Form nhập (Entry Form – Page 21)**
  - Trường bắt buộc luôn có: `FULL_NAME`, `PASSPORT_NO`, `NATIONALITY`, `ENTRY_DATE`.
  - Trường tùy theo trạng thái:
    - Khi `SYSTEM_STATUS = PANDEMIC`: `FLIGHT_NO`, `ORIGIN`, `DESTINATION` phải
      nhập và hiển thị gợi ý máy bay/chuyến bay.
    - Khi `SYSTEM_STATUS = NORMAL`: các trường trên là tuỳ chọn và ẩn bớt ghi chú.
  - **Validations**: đảm bảo `PASSPORT_NO` không trùng bằng PL/SQL function
    kiểm tra bảng `TRAVELERS`.
  - **Sau khi Submit**: lưu vào bảng `TRAVELERS`, hiển thị nút **Khai báo y tế**
    để chuyển tiếp tới màn hình **Health Declaration**.

- **Modal chi tiết (Entry Detail – Page 22)**
  - Hiển thị toàn bộ thông tin người nhập cảnh.
  - Có nút mở form **Health Declaration** và nút xem lịch sử xét nghiệm nếu đã có.

- **Kết nối & Luồng**: sau khi lưu hoặc cập nhật thành công, hệ thống điều hướng
  về danh sách kèm thông báo. Người dùng có thể tiếp tục khai báo y tế hoặc tạo
  lệnh xét nghiệm từ đây.
