﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class LanguageSchoolEntities : DbContext
    {
        public LanguageSchoolEntities()
            : base("name=LanguageSchoolEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Client> Clients { get; set; }
        public virtual DbSet<ClientTag> ClientTags { get; set; }
        public virtual DbSet<Document> Documents { get; set; }
        public virtual DbSet<Employee> Employees { get; set; }
        public virtual DbSet<EmployeeCategory> EmployeeCategories { get; set; }
        public virtual DbSet<EmployeeService> EmployeeServices { get; set; }
        public virtual DbSet<Manufacter> Manufacters { get; set; }
        public virtual DbSet<Photo> Photos { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<SaleProduct> SaleProducts { get; set; }
        public virtual DbSet<SalesHistory> SalesHistories { get; set; }
        public virtual DbSet<Service> Services { get; set; }
        public virtual DbSet<ServicePhoto> ServicePhotoes { get; set; }
        public virtual DbSet<SignUpService> SignUpServices { get; set; }
        public virtual DbSet<SignUpServiceDocument> SignUpServiceDocuments { get; set; }
    }
}
