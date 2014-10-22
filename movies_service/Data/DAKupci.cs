using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace movies_service.Data
{
    public class DAKupci
    {
        public static void Insert(Kupci k)
        {
            using (moviesEntities con = new moviesEntities())
            {
                con.msp_Kupci_Insert(k.Ime,k.Prezime,k.Email,k.KorisnickoIme,k.LozinkaHash,k.LozinkaSalt,k.DatumRegistracije);
            }
        }
    }
}
