Họ Tên: Lăng Nguyễn Minh Lượng MSSV: k225480106044
BÀI TẬP VỀ NHÀ 05, Môn Hệ quản trị csdl.

SUBJECT: Trigger on mssql

A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài toán đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết
 
B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.
------------------------------------------------------------------------------------------------------------------
Bài làm 
A.PHÂN TÍCH THIẾT VÀ KẾ HỆ THỐNG QUẢN LÝ BÁN VÉ XE BUS HÀ LAN
1.Mô tả đồ án
Đồ án “Phân tích và thiết kế hệ thống bán vé xe buýt Hà Lan” hướng đến việc xây dựng một hệ thống quản lý bán vé hiện đại, tiện lợi và hiệu quả, nhằm khắc phục những bất cập trong phương pháp truyền thống như mất thời gian, khó kiểm soát doanh thu, và thông tin hành khách. Hệ thống giúp hành khách dễ dàng mua vé, tra cứu lộ trình, đồng thời hỗ trợ nhà quản lý theo dõi doanh thu, quản lý tuyến xe, và tối ưu hóa hoạt động vận tải. Đồ án tập trung vào việc phân tích yêu cầu thực tế, thiết kế kiến trúc hệ thống, mô hình dữ liệu và các chức năng chính, đồng thời rèn luyện kỹ năng phân tích hệ thống và ứng dụng các công nghệ hiện đại trong lĩnh vực công nghệ thông tin.
2.Yêu cầu bài toán. 
Đồ án tập trung vào việc phân tích và thiết kế hệ thống bán vé xe buýt hiện đại, nhằm khắc phục những bất cập của phương pháp truyền thống như mất thời gian, khó kiểm soát doanh thu và thông tin hành khách. Hệ thống này cho phép hành khách mua vé, tra cứu lộ trình dễ dàng, đồng thời hỗ trợ nhà quản lý trong việc theo dõi doanh thu, quản lý tuyến xe và tối ưu hóa hoạt động vận tải, với trọng tâm là ứng dụng công nghệ tiên tiến và thiết kế hiệu quả.
B.Cơ sở dữ liệu.
Tạo database gồm các bảng 

![image](https://github.com/user-attachments/assets/cb1e1f41-7a60-4867-b6a6-d737cc70fd08)


các bảng diagram thuộc tích CK, Fk 


![image](https://github.com/user-attachments/assets/434d42aa-81d4-4e26-9917-d10284eec60f)


Thêm trường phi chuẩn vào bảng DatVe

![image](https://github.com/user-attachments/assets/97662a28-b001-43d1-a190-d872285a63bc)

Trigger 

![image](https://github.com/user-attachments/assets/d8172141-7386-4441-a97a-4ad69aa24a96)

nhập dữ liệu 


![image](https://github.com/user-attachments/assets/0b1ebdcd-766b-4715-9b87-c3c5f104f88d)


truy xuất dữ liệu 

![image](https://github.com/user-attachments/assets/995de26b-89ed-493e-a701-56782b97585a)

Kết luận 
trigger ghichu giúp đồ án của em : 
Tự động hóa xử lý: Kiểm tra, xử lý dữ liệu và thông báo dựa trên nội dung ghi chú.
Đảm bảo dữ liệu chính xác: Ngăn chặn việc nhập dữ liệu sai hoặc không phù hợp.
Tiết kiệm thời gian: Thực hiện các hành động tự động, giảm công sức xử lý thủ công.
Cải thiện trải nghiệm người dùng: Tăng tính tương tác và đáp ứng nhu cầu cá nhân hóa.
Theo dõi và bảo mật: Ghi nhật ký thay đổi liên quan đến trường ghi chú. 

