using System.ComponentModel.DataAnnotations;

namespace MyWeb.Models{
    public class Login{
        [Required]
        [StringLength(10, MinimumLength = 3)]
        public string Username { get; set; }

        [Required]
        [StringLength(10, MinimumLength = 3)]
        public string Password { get; set; }
    }
}