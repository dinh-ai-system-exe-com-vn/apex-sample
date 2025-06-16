# Hướng dẫn Đa Ngôn Ngữ

Ứng dụng cần hỗ trợ đồng thời ba ngôn ngữ: **tiếng Anh**, **tiếng Việt** và **tiếng Nhật**. Dưới đây là một số khuyến nghị để triển khai tính năng này trên Oracle APEX.

## 1. Cấu trúc dữ liệu dịch
- Tạo bảng `LANGUAGES` lưu thông tin mã ngôn ngữ (`en`, `vi`, `ja`).
- Tạo bảng `TRANSLATIONS` lưu cặp khóa và nội dung dịch cho từng ngôn ngữ.

## 2. Sử dụng trong Oracle APEX
- Sử dụng gói `APEX_LANG` để lấy thông điệp theo ngôn ngữ người dùng đã chọn.
- Cung cấp tùy chọn chuyển đổi ngôn ngữ (ví dụ menu drop-down hoặc link trên header).

## 3. Quy ước đặt khóa thông điệp
- Đặt khóa theo tiếng Anh và sử dụng nhất quán trong mã nguồn.
- Tránh viết trực tiếp chuỗi hiển thị trong page; luôn dùng hàm lấy thông điệp từ bảng dịch.

Việc triển khai tốt tính năng đa ngôn ngữ sẽ giúp ứng dụng dễ dàng mở rộng cho người dùng ở nhiều khu vực khác nhau.
