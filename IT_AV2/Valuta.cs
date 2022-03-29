using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IT_AV2
{
    public class Valuta
    {
        public string Name { get; set; }
        public string Value { get; set; }

        public Valuta(string Name, string Value)
        {
            this.Name = Name;
            this.Value = Value;
        }
    }
}