using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SchoolManagementSystem.Models
{
    [Table("Student")]
    public class Student
    {
        [Key]
        public long Id { get; set; }
        public string StudentName { get; set; }
        public string Age { get; set; }
        public string standard { get; set; }
        public string Contact { get; set; }
        public bool IsActive { get; set; }
    }
}
