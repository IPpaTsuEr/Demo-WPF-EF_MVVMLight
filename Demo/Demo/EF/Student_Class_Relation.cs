using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.EF
{
    [Table("Student_Class_Relation")]
    public class Student_Class_Relation
    {
        [Key,Required]
        [DatabaseGenerated(System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption.None)]
        public int StudentId { get; set; }
        [Required]
        public int ClassId { get; set; }
    }
}
