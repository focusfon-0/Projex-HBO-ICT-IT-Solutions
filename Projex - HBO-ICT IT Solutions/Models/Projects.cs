using System.ComponentModel.DataAnnotations;

namespace Projex___HBO_ICT_IT_Solutions.Models
{
    public class Projects
    {
        [Key]
        public int ID { get; set; }

        [Required]
        public string projectName { get; set; } = "Standaard projectnaam";
        public string projectDescription { get; set; } = "Standaard projectomschrijving";
        public bool projectAvailable { get; set; } = true;
        public DateTime createdOn { get; set; } = DateTime.Now;
        public string createdBy { get; set; } = "Naam opdrachtgever";

    }
}
