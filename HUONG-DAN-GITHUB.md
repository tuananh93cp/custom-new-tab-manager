# 🚀 Hướng Dẫn Tạo GitHub Repository & Upload Chrome Extension

## 📋 Bước 1: Tạo GitHub Repository (Public)

### 1.1 Truy cập GitHub
1. Đi tới: https://github.com
2. Đăng nhập vào tài khoản GitHub của bạn
3. Click nút **"New"** (màu xanh) hoặc **"+"** > **"New repository"**

### 1.2 Cấu hình Repository
```
Repository name: custom-new-tab-manager
Description: A beautiful, privacy-focused new tab page extension for Chrome and Firefox
☑️ Public (QUAN TRỌNG: Phải chọn Public để Chrome Web Store có thể truy cập)
☑️ Add a README file
☐ Add .gitignore (không cần, chúng ta đã có .gitignore)
☐ Choose a license (có thể thêm MIT license nếu muốn)
```

### 1.3 Tạo Repository
- Click **"Create repository"**
- GitHub sẽ tạo repo với URL: `https://github.com/tuananh93cp/custom-new-tab-manager`

## 📋 Bước 2: Chuẩn Bị Code Local

### 2.1 Tạo file .gitignore
```bash
# Tạo file .gitignore trong thư mục extesion1
echo "node_modules/" > .gitignore
echo "*.zip" >> .gitignore
echo ".DS_Store" >> .gitignore
echo "Thumbs.db" >> .gitignore
echo "chrome-temp/" >> .gitignore
echo "firefox-temp/" >> .gitignore
```

### 2.2 Danh sách files sẽ được push lên GitHub:
```
✅ manifest.json              # Chrome manifest
✅ manifest_firefox.json      # Firefox manifest  
✅ newtab.html               # Main HTML file
✅ newtab.js                 # JavaScript file (external)
✅ icons/                    # Thư mục icons (icon16.png, icon48.png, icon128.png)
✅ converter.html            # SVG to PNG converter
✅ download-icons.html       # Icon download page
✅ create-icons.html         # Icon generator
✅ privacy-policy.html       # Privacy policy
✅ README.md                 # Documentation
✅ HUONG-DAN-SU-DUNG.md     # Vietnamese guide
✅ chrome-web-store-info.md  # Store submission info
✅ create-chrome-package.bat # Build script for Chrome
✅ create-firefox-package.bat # Build script for Firefox
✅ .gitignore               # Git ignore file
```

## 📋 Bước 3: Commands Git để Push Code

### 3.1 Khởi tạo Git repository (trong thư mục extesion1)
```bash
git init
```

### 3.2 Add remote repository
```bash
git remote add origin https://github.com/tuananh93cp/custom-new-tab-manager.git
```

### 3.3 Add tất cả files
```bash
git add .
```

### 3.4 Commit với message đầu tiên
```bash
git commit -m "Initial commit: Custom New Tab Manager Extension v1.0.0

Features:
- Beautiful gradient new tab page
- Google search integration  
- Quick access links to popular sites
- Real-time clock display
- Privacy-focused (no data collection)
- Chrome & Firefox compatible
- SVG to PNG converter tool
- Icon generator with multiple themes
- Complete documentation & privacy policy

Technical:
- Chrome Manifest v3 compliant
- Content Security Policy (CSP) compliant
- External JavaScript (no inline scripts)
- Responsive design
- Ready for Chrome Web Store submission"
```

### 3.5 Push lên GitHub
```bash
git branch -M main
git push -u origin main
```

## 📋 Bước 4: Tạo Chrome Extension Package

### 4.1 Chạy script tạo package
```bash
.\create-chrome-package.bat
```

### 4.2 Kết quả sẽ có file:
```
custom-new-tab-manager-chrome.zip
```

### 4.3 Nội dung package Chrome:
```
📦 custom-new-tab-manager-chrome.zip
├── manifest.json          # Chrome Manifest v3
├── newtab.html           # New tab page
├── newtab.js             # JavaScript external file  
├── icons/
│   ├── icon16.png        # 16x16 toolbar icon
│   ├── icon48.png        # 48x48 extensions page icon
│   └── icon128.png       # 128x128 web store icon
└── README.md             # Documentation
```

## 📋 Bước 5: Chuẩn Bị Cho Chrome Web Store

### 5.1 Thông tin cần thiết (từ file chrome-web-store-info.md):

**Extension Name:** Custom New Tab Manager  
**Version:** 1.0.0  
**Category:** Productivity  
**Developer:** XMP  
**Email:** lanhanh64529@gmail.com  

**Short Description (132 chars):**
```
A beautiful, privacy-focused new tab page with search, quick links, and customization options.
```

**Single Purpose (English):**
```
Enhancing the new tab experience with a customizable, privacy-focused interface that helps users access their favorite websites quickly.
```

**Permission Justification:**
```
Storage Permission: Required to save user preferences and customization settings locally on the user's device. No data is transmitted externally.
```

**Privacy Policy URL:**
```
https://github.com/tuananh93cp/custom-new-tab-manager/blob/main/privacy-policy.html
```

### 5.2 Screenshots cần chuẩn bị:
1. **Main interface** (1280x800px) - Showing search box and quick links
2. **Search functionality** (1280x800px) - Demonstrating search feature  
3. **Time display** (1280x800px) - Showing real-time clock
4. **Mobile responsive** (640x400px) - Mobile view
5. **Privacy focus** (1280x800px) - Highlighting no data collection

### 5.3 Promotional images (nếu muốn featured):
- **Small Tile:** 440x280px
- **Large Tile:** 920x680px  
- **Marquee:** 1400x560px

## 📋 Bước 6: Submit Chrome Web Store

### 6.1 Truy cập Chrome Web Store Developer Dashboard
```
https://chrome.google.com/webstore/devconsole
```

### 6.2 Upload extension
1. Click **"Add new item"**
2. Upload file **`custom-new-tab-manager-chrome.zip`**
3. Điền thông tin từ **`chrome-web-store-info.md`**
4. Upload screenshots
5. Set privacy policy URL: `https://github.com/tuananh93cp/custom-new-tab-manager/blob/main/privacy-policy.html`

### 6.3 Review checklist
- ✅ Single purpose clearly defined
- ✅ Permissions justified
- ✅ Privacy policy public accessible
- ✅ No inline scripts (CSP compliant)
- ✅ Professional screenshots
- ✅ Complete description
- ✅ Valid developer information

## 📋 Bước 7: Firefox Add-ons (Tùy chọn)

### 7.1 Tạo Firefox package
```bash
.\create-firefox-package.bat
```

### 7.2 Submit Firefox Add-ons
```
https://addons.mozilla.org/developers/
```

## 🎯 Links Quan Trọng

- **GitHub Repository:** https://github.com/tuananh93cp/custom-new-tab-manager
- **Privacy Policy:** https://github.com/tuananh93cp/custom-new-tab-manager/blob/main/privacy-policy.html
- **Chrome Web Store Dashboard:** https://chrome.google.com/webstore/devconsole
- **Firefox Developer Hub:** https://addons.mozilla.org/developers/

## ✅ Checklist Hoàn Thành

- [ ] Tạo GitHub repository (public)
- [ ] Push code lên GitHub
- [ ] Verify privacy policy accessible tại GitHub URL
- [ ] Tạo Chrome extension package
- [ ] Chuẩn bị screenshots
- [ ] Submit Chrome Web Store
- [ ] Chờ review (thường 1-3 ngày)

---

**🎉 Chúc bạn thành công với extension Custom New Tab Manager!**

*Created by XMP - March 7, 2025* 