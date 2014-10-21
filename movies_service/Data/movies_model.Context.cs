﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Objects;
    using System.Data.Objects.DataClasses;
    using System.Linq;
    
    public partial class MoviesEntities : DbContext
    {
        public MoviesEntities()
            : base("name=MoviesEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Dobavljaci> Dobavljaci { get; set; }
        public DbSet<Izlazi> Izlazi { get; set; }
        public DbSet<IzlazStavke> IzlazStavke { get; set; }
        public DbSet<JediniceMjere> JediniceMjere { get; set; }
        public DbSet<Korisnici> Korisnici { get; set; }
        public DbSet<KorisniciUloge> KorisniciUloge { get; set; }
        public DbSet<Kupci> Kupci { get; set; }
        public DbSet<NarudzbaStavke> NarudzbaStavke { get; set; }
        public DbSet<Narudzbe> Narudzbe { get; set; }
        public DbSet<Ocjene> Ocjene { get; set; }
        public DbSet<Proizvodi> Proizvodi { get; set; }
        public DbSet<Skladista> Skladista { get; set; }
        public DbSet<Ulazi> Ulazi { get; set; }
        public DbSet<UlazStavke> UlazStavke { get; set; }
        public DbSet<Uloge> Uloge { get; set; }
        public DbSet<VrsteProizvoda> VrsteProizvoda { get; set; }
    
        public virtual ObjectResult<Nullable<decimal>> msp_Korisnici_Insert(string ime, string prezime, string email, string telefon, string korisnickoIme, string lozinkaSalt, string lozinkaHash)
        {
            var imeParameter = ime != null ?
                new ObjectParameter("Ime", ime) :
                new ObjectParameter("Ime", typeof(string));
    
            var prezimeParameter = prezime != null ?
                new ObjectParameter("Prezime", prezime) :
                new ObjectParameter("Prezime", typeof(string));
    
            var emailParameter = email != null ?
                new ObjectParameter("Email", email) :
                new ObjectParameter("Email", typeof(string));
    
            var telefonParameter = telefon != null ?
                new ObjectParameter("Telefon", telefon) :
                new ObjectParameter("Telefon", typeof(string));
    
            var korisnickoImeParameter = korisnickoIme != null ?
                new ObjectParameter("KorisnickoIme", korisnickoIme) :
                new ObjectParameter("KorisnickoIme", typeof(string));
    
            var lozinkaSaltParameter = lozinkaSalt != null ?
                new ObjectParameter("LozinkaSalt", lozinkaSalt) :
                new ObjectParameter("LozinkaSalt", typeof(string));
    
            var lozinkaHashParameter = lozinkaHash != null ?
                new ObjectParameter("LozinkaHash", lozinkaHash) :
                new ObjectParameter("LozinkaHash", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<decimal>>("msp_Korisnici_Insert", imeParameter, prezimeParameter, emailParameter, telefonParameter, korisnickoImeParameter, lozinkaSaltParameter, lozinkaHashParameter);
        }
    
        public virtual int msp_KorisniciUloge_Insert(Nullable<int> korisnikID, Nullable<int> ulogaID)
        {
            var korisnikIDParameter = korisnikID.HasValue ?
                new ObjectParameter("KorisnikID", korisnikID) :
                new ObjectParameter("KorisnikID", typeof(int));
    
            var ulogaIDParameter = ulogaID.HasValue ?
                new ObjectParameter("UlogaID", ulogaID) :
                new ObjectParameter("UlogaID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("msp_KorisniciUloge_Insert", korisnikIDParameter, ulogaIDParameter);
        }
    
        public virtual ObjectResult<Uloge> msp_Uloge_SelectAll()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Uloge>("msp_Uloge_SelectAll");
        }
    
        public virtual ObjectResult<Uloge> msp_Uloge_SelectAll(MergeOption mergeOption)
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Uloge>("msp_Uloge_SelectAll", mergeOption);
        }
    }
}
