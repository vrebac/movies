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
    
    public partial class ProizvodiKategorije
    {
        public int ProizvodKategorijaID { get; set; }
        public int ProizvodID { get; set; }
        public int KategorijaID { get; set; }
    
        public virtual Kategorije Kategorije { get; set; }
        public virtual Proizvodi Proizvodi { get; set; }
    }
}
