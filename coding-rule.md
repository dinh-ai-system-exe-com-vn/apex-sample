# Quy tắc lập trình

Dự án này sử dụng **Tailwind CSS** cùng **Flowbite** để xây dựng giao diện người dùng.

## Hướng dẫn sử dụng cơ bản

- Thêm Tailwind bằng phương thức Play CDN: <https://tailwindcss.com/docs/installation/play-cdn>
- Cài đặt Flowbite thông qua CDN: <https://flowbite.com/docs/getting-started/introduction/>
- Tận dụng các lớp tiện ích của Tailwind cho bố cục và kiểu dáng cơ bản.
- Sử dụng các thành phần Flowbite cho các yếu tố tương tác như thanh điều hướng, modal, nút bấm.
- Hạn chế viết CSS tùy chỉnh trừ khi thật cần thiết.

## Quy trình trang tạo/cập nhật thanh toán

Tất cả các trang tạo hoặc cập nhật thông tin thanh toán phải tuân theo ba bước:

1. **Nhập form** – người dùng điền dữ liệu.
2. **Xác nhận** – hiển thị màn hình xác nhận nội dung đã nhập.
3. **Lưu** – sau khi xác nhận, lưu dữ liệu vào cơ sở dữ liệu.

## Trang chi tiết

Sử dụng hộp thoại modal để hiển thị thông tin chi tiết khi xem trang detail.
