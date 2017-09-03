using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShopWrights.Models
{
    public class DeskModel
    {
        public string Clip { get; set; }
        public string Weighter { get; set; }
        public List<string> Legs { get; set; }
        public List<string> Wheels { get; set; }

    }
}