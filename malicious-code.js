$.ajax({
  url: 'http://localhost:3000/students/18',
  data: {student: {average: 100}},
  method: 'PUT'
})