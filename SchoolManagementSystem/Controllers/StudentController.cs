using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SchoolManagementSystem.Models;
using SchoolManagementSystem.Repository;

namespace SchoolManagementSystem.Controllers
{
   
    public class StudentController : Controller
    {

        private readonly SchoolDBContext _dbContext;
        public StudentController(SchoolDBContext dBContext)
        {
            _dbContext = dBContext;
        }
        // GET: StudentController
        public async Task<IActionResult> Index()
        {
            // Repository ka instance bana ke data fetch karna
            StudentRepository userRepo = new StudentRepository(_dbContext);
            var productList = await userRepo.Get();

            // Total students count ko session mein save karna
            HttpContext.Session.SetInt32("TotalStudents", productList.Count());

            // Product list ko view mein bhejna
            return View(productList);
        }




        // GET: StudentController/Create
        public IActionResult Create()
        {
            // Session se data fetch karna
            var totalStudents = HttpContext.Session.GetInt32("TotalStudents") ?? 0;

            // ViewBag mein session data pass karna
            ViewBag.TotalStudents = totalStudents;

            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(Student studentcs)
        {
            if (ModelState.IsValid)
            {
                StudentRepository stdRepo = new StudentRepository(_dbContext);

                if (await stdRepo.AddPlant(studentcs))
                {
                    TempData["ActionMessage"] = "Unable to save Student";
                    TempData["ActionStatus"] = "Fail";
                }
                else
                {
                    // Agar student successfully add ho gaya, toh session update karein
                    var currentTotal = HttpContext.Session.GetInt32("TotalStudents") ?? 0;
                    HttpContext.Session.SetInt32("TotalStudents", currentTotal + 1);

                    TempData["ActionMessage"] = "Student saved successfully!";
                    TempData["ActionStatus"] = "Success";

                    return RedirectToAction("Index");
                }
            }
            return View();
        }





        public async Task<IActionResult> Edit(long id)
        {
            StudentRepository roleRepo = new StudentRepository(_dbContext);

            // Fetch student by ID
            var student = await roleRepo.GetProductById(id); // Assuming GetProductById exists in repository
            if (student == null)
            {
                return NotFound();
            }

            // Example session usage: Store student name in session
            HttpContext.Session.SetString("StudentName", student.StudentName);

            return View(student);
        }



        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(Student student)
        {
            if (!ModelState.IsValid)
            {
                return View(student);
            }

            StudentRepository stdRepo = new StudentRepository(_dbContext);

            // Example session usage: Retrieve student name from session
            var studentNameFromSession = HttpContext.Session.GetString("StudentName");

            // Perform update operation
            if (await stdRepo.UpdateStudent(student))
            {
                TempData["Message"] = $"Student '{studentNameFromSession}' updated successfully.";
                return RedirectToAction("Index");
            }
            else
            {
                TempData["ErrorMessage"] = "Failed to update the student.";
                return View(student);
            }
        }



        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var student = _dbContext.Students.FirstOrDefault(s => s.Id == id);
            if (student == null)
            {
                return NotFound();
            }

            return View(student);  // Pass the student object to the view
        }

        // Handle the Delete operation when confirmed
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            var student = _dbContext.Students.FirstOrDefault(s => s.Id == id);
            if (student != null)
            {
                _dbContext.Students.Remove(student);
                _dbContext.SaveChanges();

                // Store a confirmation message in TempData
                TempData["Message"] = "Student has been deleted successfully!";
            }

            // Redirect to the Index action or another appropriate action after deletion
            return RedirectToAction("Index");
        }





    }
}
