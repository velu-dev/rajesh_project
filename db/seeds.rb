Role.create!([
  {role_name: "Admin", description: "show all"},
  {role_name: "Staff", description: "manage Students"},
  {role_name: "Student", description: "View Access only"}
])
User.create!([
  {name: "admin", email: "admin@admin.com", password: "admin", mobile: "123456789", role_id: 1, class_detail_id: nil}
])
