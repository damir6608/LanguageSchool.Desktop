//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LanguageSchool.Desktop
{
    using System;
    using System.Collections.Generic;
    
    public partial class SaleProduct
    {
        public int Id { get; set; }
        public Nullable<int> SalesHistoryId { get; set; }
        public Nullable<int> ProductId { get; set; }
        public Nullable<int> Count { get; set; }
    
        public virtual Product Product { get; set; }
        public virtual SalesHistory SalesHistory { get; set; }
    }
}
