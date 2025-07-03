# 🚀 Hướng Dẫn Sử Dụng - Custom New Tab Manager

## 📋 Tổng Quan Dự Án

**Tên Extension:** Custom New Tab Manager  
**Phiên bản:** 1.0.0  
**Developer:** XMP  
**Email:** lanhanh64529@gmail.com  
**GitHub:** https://github.com/tuananh93cp/custom-new-tab-manager  
**Ngày tạo:** 07/03/2025  

## 📁 Cấu Trúc Dự Án

```
extesion1/
├── manifest.json                 # Manifest cho Chrome (v3)
├── manifest_firefox.json         # Manifest cho Firefox (v2)
├── newtab.html                  # Trang new tab chính
├── converter.html               # Tool chuyển đổi SVG sang PNG
├── download-icons.html          # Trang tải icons
├── create-icons.html           # Trang tạo icons
├── privacy-policy.html         # Chính sách bảo mật
├── README.md                   # Tài liệu tiếng Anh
├── chrome-web-store-info.md    # Thông tin cho Chrome Web Store
├── create-chrome-package.bat   # Script tạo package Chrome
├── create-firefox-package.bat  # Script tạo package Firefox
├── icons/                      # Thư mục chứa icons
└── HUONG-DAN-SU-DUNG.md       # File này
```

## 🛠️ Các Bước Thực Hiện

### Bước 1: Tạo Icons
1. Mở file `create-icons.html` trong trình duyệt
2. Click "Generate Icons" để tạo icons
3. Download tất cả 3 kích thước (16x16, 48x48, 128x128)
4. Đặt các file vào thư mục `icons/`

### Bước 2: Tạo Package cho Chrome
1. Chạy file `create-chrome-package.bat`
2. File `custom-new-tab-manager-chrome.zip` sẽ được tạo
3. File này sẵn sàng upload lên Chrome Web Store

### Bước 3: Tạo Package cho Firefox
1. Chạy file `create-firefox-package.bat`
2. File `custom-new-tab-manager-firefox.zip` sẽ được tạo
3. File này sẵn sàng upload lên Firefox Add-ons

## 📝 Thông Tin Chrome Web Store

### Mục Đích Duy Nhất
**Tiếng Việt:** Nâng cao trải nghiệm trang tab mới với giao diện có thể tùy chỉnh, tập trung vào quyền riêng tư, giúp người dùng truy cập nhanh chóng các trang web yêu thích của họ.

**English:** Enhancing the new tab experience with a customizable, privacy-focused interface that helps users access their favorite websites quickly.

### Lý Do Yêu Cầu Quyền
**Storage Permission:**
- **Lý do:** Lưu trữ các tùy chọn cá nhân hóa và cài đặt tùy chỉnh của người dùng cục bộ trên thiết bị
- **Phạm vi:** Chỉ dữ liệu của extension, không truy cập dữ liệu của website khác
- **Bảo mật:** Không có dữ liệu nào được truyền ra bên ngoài

### Mô Tả Ngắn (132 ký tự)
"A beautiful, privacy-focused new tab page with search, quick links, and customization options."

### Danh Mục
- **Chính:** Productivity
- **Phụ:** Accessibility

## 🛡️ Chính Sách Bảo Mật

- ✅ Không thu thập dữ liệu cá nhân
- ✅ Không theo dõi người dùng
- ✅ Tất cả cài đặt lưu trữ cục bộ
- ✅ Không có server bên ngoài
- ✅ Mã nguồn mở và minh bạch

**URL Policy:** https://github.com/tuananh93cp/custom-new-tab-manager/blob/main/privacy-policy.html

## 🔧 Tools Đi Kèm

### 1. SVG to PNG Converter
- File: `converter.html`
- Chức năng: Chuyển đổi file SVG thành PNG
- Hỗ trợ kéo thả file
- Tùy chỉnh kích thước và chất lượng

### 2. Icon Download Page
- File: `download-icons.html`
- Cung cấp nhiều theme icon khác nhau
- Tạo icon tùy chỉnh với text và màu sắc
- Download từng kích thước riêng biệt

### 3. Icon Creator
- File: `create-icons.html`
- Tạo icons cho extension
- 3 kích thước cần thiết: 16x16, 48x48, 128x128
- Gradient background đẹp mắt

## 📦 Upload Lên Store

### Chrome Web Store
1. Truy cập [Chrome Web Store Developer Dashboard](https://chrome.google.com/webstore/devconsole)
2. Click "Add new item"
3. Upload file `custom-new-tab-manager-chrome.zip`
4. Điền thông tin từ file `chrome-web-store-info.md`
5. Upload screenshots và icons
6. Submit for review

### Firefox Add-ons
1. Truy cập [Firefox Add-on Developer Hub](https://addons.mozilla.org/developers/)
2. Click "Submit a New Add-on"
3. Upload file `custom-new-tab-manager-firefox.zip`
4. Điền thông tin tương tự Chrome
5. Submit for review

## 📊 Checklist Hoàn Thành

- [x] ✅ Tạo manifest.json cho Chrome (v3)
- [x] ✅ Tạo manifest cho Firefox (v2)
- [x] ✅ Tạo giao diện new tab đẹp mắt
- [x] ✅ Tạo SVG to PNG converter
- [x] ✅ Tạo trang download icons
- [x] ✅ Tạo privacy policy đầy đủ
- [x] ✅ Chuẩn bị thông tin Chrome Web Store
- [x] ✅ Tạo script đóng gói tự động
- [x] ✅ Tạo tài liệu hướng dẫn
- [x] ✅ Fix Content Security Policy (CSP) error
- [x] ✅ Tách JavaScript ra file external

## 🎯 Các File Cần Upload

### Chrome Web Store
- `custom-new-tab-manager-chrome.zip` (tạo bằng script)
- Screenshots của extension
- Icons: icon16.png, icon48.png, icon128.png
- Privacy policy URL

### Firefox Add-ons
- `custom-new-tab-manager-firefox.zip` (tạo bằng script)
- Screenshots tương tự
- Icons tương tự
- Privacy policy URL

## 💡 Lưu Ý Quan Trọng

1. **Icons:** Phải tạo icons trước khi chạy script đóng gói
2. **Privacy Policy:** URL phải accessible công khai
3. **Testing:** Test extension trên cả Chrome và Firefox trước khi upload
4. **Version:** Cập nhật version number khi có thay đổi
5. **GitHub:** Upload code lên GitHub để có URL tham chiếu
6. **CSP Compliance:** Extension đã được fix để tuân thủ Content Security Policy
7. **External JS:** JavaScript đã được tách ra file riêng để tránh inline script errors

## 🔧 Lỗi Đã Được Sửa

### Content Security Policy (CSP) Error
- **Vấn đề:** Chrome không cho phép inline JavaScript trong extension
- **Giải pháp:** Tách JavaScript ra file `newtab.js` riêng biệt
- **Kết quả:** Extension hoạt động mượt mà không có lỗi bảo mật
- **File mới:** `newtab.js` - chứa tất cả JavaScript functionality

## 📞 Hỗ Trợ

- **Email:** lanhanh64529@gmail.com
- **GitHub Issues:** https://github.com/tuananh93cp/custom-new-tab-manager/issues
- **Developer:** XMP

---

**🎉 Chúc bạn thành công với extension Custom New Tab Manager!**

*Created with ❤️ by XMP - March 7, 2025* 