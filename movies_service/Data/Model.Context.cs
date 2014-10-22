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
    
    public partial class moviesEntities : DbContext
    {
        public moviesEntities()
            : base("name=moviesEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Glumci> Glumcis { get; set; }
        public DbSet<Kategorije> Kategorijes { get; set; }
        public DbSet<Korisnici> Korisnicis { get; set; }
        public DbSet<Kupci> Kupcis { get; set; }
        public DbSet<Narudzbe> Narudzbes { get; set; }
        public DbSet<Proizvodi> Proizvodis { get; set; }
        public DbSet<ProizvodiGlumci> ProizvodiGlumcis { get; set; }
        public DbSet<ProizvodiKategorije> ProizvodiKategorijes { get; set; }
        public DbSet<Reziseri> Reziseris { get; set; }
        public DbSet<Uloge> Uloges { get; set; }
    
        public virtual int msp_Kupci_Insert(string ime, string prezime, string email, string korisnickoIme, string lozinkaHash, string lozinkaSalt, Nullable<System.DateTime> datumRegistracije)
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
    
            var korisnickoImeParameter = korisnickoIme != null ?
                new ObjectParameter("KorisnickoIme", korisnickoIme) :
                new ObjectParameter("KorisnickoIme", typeof(string));
    
            var lozinkaHashParameter = lozinkaHash != null ?
                new ObjectParameter("LozinkaHash", lozinkaHash) :
                new ObjectParameter("LozinkaHash", typeof(string));
    
            var lozinkaSaltParameter = lozinkaSalt != null ?
                new ObjectParameter("LozinkaSalt", lozinkaSalt) :
                new ObjectParameter("LozinkaSalt", typeof(string));
    
            var datumRegistracijeParameter = datumRegistracije.HasValue ?
                new ObjectParameter("DatumRegistracije", datumRegistracije) :
                new ObjectParameter("DatumRegistracije", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("msp_Kupci_Insert", imeParameter, prezimeParameter, emailParameter, korisnickoImeParameter, lozinkaHashParameter, lozinkaSaltParameter, datumRegistracijeParameter);
        }
    }
}
