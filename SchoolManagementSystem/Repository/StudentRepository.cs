using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using SchoolManagementSystem.Models;

namespace SchoolManagementSystem.Repository
{
    public class StudentRepository
    {
        private readonly SchoolDBContext _dbContext;

        public StudentRepository(SchoolDBContext dBContext)
        {
            _dbContext = dBContext;
        }


        public async Task<List<Student>> Get()
        {
            try
            {

                var plant = await _dbContext.Students
                    .FromSqlRaw("EXEC GetStudentList") // Assuming sp_SelectPlants is the name of your stored procedure
                    .ToListAsync();



                return plant;
            }
            catch (Exception ex)
            {
                // Log or handle the exception as needed
                Console.WriteLine($"An error occurred while fetching Student: {ex.Message}");
                throw; // Rethrow the exception to propagate it upwards
            }
        }


        public async Task<bool> AddPlant(Student std)
        {

            var parameter = new List<SqlParameter>();
            parameter.Add(new SqlParameter("@StudentName", std.StudentName));
            parameter.Add(new SqlParameter("@Age", std.Age));
            parameter.Add(new SqlParameter("@standard", std.standard));
            parameter.Add(new SqlParameter("@Contact", std.Contact));
            parameter.Add(new SqlParameter("@IsActive", std.IsActive));

            int result = await Task.Run(() => _dbContext.Database
               .ExecuteSqlRawAsync(@"InsertStudent @StudentName, @Age, @standard,@Contact,@IsActive", parameter.ToArray()));

            return result > 0;


        }



        public async Task<long> DeleteStudent(long StudentId)
        {
            var sql = $"EXEC DeleteStudent @Id";
            var parameters = new object[] { StudentId };

            return await Task.Run(() => _dbContext.Database.ExecuteSqlInterpolatedAsync($"DeleteStudent {StudentId}"));
        }





        public async Task<Student> GetProductById(long id)
        {
            return await _dbContext.Students.FirstOrDefaultAsync(s => s.Id == id);
        }



        public async Task<bool> UpdateStudent(Student std)
        {
            var parameter = new List<SqlParameter>();
            parameter.Add(new SqlParameter("@Id", std.Id));
            parameter.Add(new SqlParameter("@StudentName", std.StudentName));
            parameter.Add(new SqlParameter("@Age", std.Age));
            parameter.Add(new SqlParameter("@standard", std.standard));
            parameter.Add(new SqlParameter("@Contact", std.Contact));

      

            long result = await Task.Run(() => _dbContext.Database
               .ExecuteSqlRawAsync(@"UpdateStudent @Id, @StudentName,@Age, @standard,@Contact", parameter.ToArray()));

            return result > 0;

        }

    }
}
