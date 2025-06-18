# Demo Oracle APEX – Hệ Thống Quản Lý Kiểm Dịch Mô Phỏng

Tài liệu này ghi lại đề bài gốc để triển khai dự án mẫu trên nền tảng Oracle APEX.

## 1. Mục tiêu & bối cảnh bài toán

Thiết kế và lập trình một hệ thống kiểm dịch mô phỏng (mini) trên nền tảng **Oracle APEX**. Sản phẩm cần thể hiện khả năng chuyển đổi trạng thái hệ thống giữa thời bình và thời dịch do quản trị viên thao tác. Giao diện và nghiệp vụ phải linh hoạt tùy trạng thái, mô phỏng dữ liệu thực tế ở cửa khẩu, sân bay.

## 2. Yêu cầu nghiệp vụ & chức năng bắt buộc

### A. Quản trị hệ thống & chuyển trạng thái
- Trang quản trị cho phép đổi trạng thái "Bình thường"/"Dịch bệnh".
- Ghi lại lịch sử chuyển trạng thái (ngày/giờ, người thao tác).

### B. Nghiệp vụ chung (cả 2 trạng thái)
- Quản lý thông tin nhập cảnh (CRUD).
- Khai báo y tế: form thay đổi số trường tùy trạng thái.

### C. Nghiệp vụ chỉ xuất hiện khi dịch
- Quản lý xét nghiệm.
- Báo cáo nhanh: thống kê ca nghi nhiễm, tổng số xét nghiệm, xuất Excel/PDF.

### D. Nghiệp vụ chỉ xuất hiện khi bình thường
- Thống kê định kỳ các ca nhập cảnh, không cần cảnh báo dịch.

### E. Nhật ký hoạt động
- Ghi log mọi hành động chuyển trạng thái.

## 3. Ràng buộc kỹ thuật Oracle APEX
- Lưu trạng thái hệ thống bằng Application Items hoặc Table.
- Toàn bộ UI, Menu, Form dùng Dynamic Actions hoặc Conditions để ẩn/hiện theo trạng thái.
- Role 'Admin' được phép đổi trạng thái; các Dev khác test ở vai trò nhân viên.
- Mỗi Dev phụ trách tối thiểu một module.

## 4. Luồng nghiệp vụ & mối quan hệ các chức năng
- Trang quản trị cho phép đổi trạng thái và cập nhật toàn hệ thống.
- Các module nghiệp vụ nhận trạng thái và tự điều chỉnh UI/logic.
- Nhật ký lưu mọi lần đổi trạng thái.

## 5. Demo kỳ vọng
- 1 trang dashboard hiển thị trạng thái hiện tại, có thể test chuyển đổi real-time.
- Mỗi module có tối thiểu 1 CRUD form động.

## 6. Yêu cầu bổ sung
- Không mô phỏng nghiệp vụ ngoài lề; chỉ tập trung chuyển đổi trạng thái và thay đổi UI/flow.
- Có thể dùng dữ liệu mẫu để test.
- Mỗi Dev demo module của mình độc lập nhưng trong một ứng dụng thống nhất.

## Quy tắc lập trình giao diện

Dự án này sử dụng **Tailwind CSS** kết hợp **Flowbite** để xây dựng giao diện.

### Hướng dẫn sử dụng nhanh
- Thêm Tailwind bằng phương thức Play CDN: <https://tailwindcss.com/docs/installation/play-cdn>
- Cài đặt Flowbite thông qua CDN: <https://flowbite.com/docs/getting-started/introduction/>
- Tận dụng các lớp tiện ích của Tailwind cho bố cục và kiểu dáng cơ bản.
- Sử dụng các thành phần Flowbite cho các yếu tố tương tác như thanh điều hướng, modal, nút bấm.
- Hạn chế viết CSS tuỳ chỉnh trừ khi thật cần thiết.

### Quy trình trang tạo/cập nhật
1. **Nhập form** – người dùng điền dữ liệu.
2. **Xác nhận** – hiển thị màn hình xác nhận nội dung đã nhập.
3. **Lưu** – sau khi xác nhận, lưu dữ liệu vào cơ sở dữ liệu.

