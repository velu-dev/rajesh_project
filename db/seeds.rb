ClassDetail.create!([
  {class_name: "1", description: "1'st Standard"},
  {class_name: "2", description: "2'nd class"}
])
Exam.create!([
  {exam_name: "Half Yearly", date_of_exam: "12-03-2019", class_detail_id: 1}
])
Role.create!([
  {role_name: "Admin", description: "show all"},
  {role_name: "Staff", description: "manage Students"},
  {role_name: "Student", description: "View Access only"}
])
Subject.create!([
  {s_name: "Tamil", description: nil, class_detail_id: 1}
])
User.create!([
  {name: "admin", email: "admin@admin.com", password: "admin", mobile: "123456789", role_id: 1, class_detail_id: nil},
  {name: "Admin2", email: "admin", password: "admin", mobile: "123", role_id: 1, class_detail_id: nil},
  {name: "staff", email: "staff", password: "staff", mobile: "staff", role_id: 2, class_detail_id: nil},
  {name: "student 1", email: "student", password: "student", mobile: "student", role_id: 3, class_detail_id: 1}
])
