using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.EF
{
    /// <summary>
    /// 学生信息
    ///     ID - 学号
    ///     Name - 姓名
    ///     Age - 年龄
    ///     Gender - 性别
    ///     Nation   - 民族
    ///     NativePlace - 籍贯
    ///     Address - 联系地址
    ///     Telephone - 联系电话
    /// </summary>
    [Table("StudentInfo")]
    public class StudentInfo
    {
        [Key]
        public int ID { get; set; }
        //[Required, Range(1, 120)]
        [Required]
        public DateTime DateOfBirth { get; set; } = DateTime.Now;
        [Required,MaxLength(12)]
        public string Name { get; set; }
        [Required]
        public bool Gender { get; set; }

        public int Age { get; set; }
        public string Nation { get; set; }
        public string NativePlace { get; set; }
        public string Address { get; set; }
        
        public string Telephone { get; set; }

    }
}
