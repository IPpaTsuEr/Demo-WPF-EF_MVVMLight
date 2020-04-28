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
    /// 班级信息
    ///     ID - 班级ID
    ///     Name - 班级名称
    ///     Grade - 年级
    /// </summary>
    [Table("ClassInfo")]
    public class ClassInfo
    {
        [Key]
        public int ID { get; set; }
        [Required,MaxLength(50)]
        public string Name { get; set; }
        [Required]
        public int Grade { get; set; } = 1;

    }
}
