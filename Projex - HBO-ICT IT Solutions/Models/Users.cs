using System.ComponentModel.DataAnnotations;

namespace Projex___HBO_ICT_IT_Solutions.Models
{
    public class Users
    {
        [Key]
        public int UserID { get; set; }

        [Required]
        public string userName { get; set; } = "Gebruikersnaam";
        public string userPassword { get; set; } = "Wachtwoord";
        
    }
}
