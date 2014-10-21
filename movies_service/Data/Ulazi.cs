//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace movies_service.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Ulazi
    {
        public Ulazi()
        {
            this.UlazStavke = new HashSet<UlazStavke>();
        }
    
        public int UlazID { get; set; }
        public string BrojFakture { get; set; }
        public System.DateTime Datum { get; set; }
        public decimal IznosRacuna { get; set; }
        public decimal PDV { get; set; }
        public string Napomena { get; set; }
        public int SkladisteID { get; set; }
        public int KorisnikID { get; set; }
        public int DobavljacID { get; set; }
    
        public virtual Dobavljaci Dobavljaci { get; set; }
        public virtual Korisnici Korisnici { get; set; }
        public virtual Skladista Skladista { get; set; }
        public virtual ICollection<UlazStavke> UlazStavke { get; set; }
    }
}