using MauiAppCrud.Modelos;
using MauiAppCrud.Utilidades;
using Microsoft.EntityFrameworkCore;


namespace MauiAppCrud.DataAccess
{
    public class PacienteDbContext : DbContext
    {
        public DbSet<Paciente> Pacientes { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            string conexionDB =$"Filename={ConexionDB.DevolverRuta("pacientes.db")}";

            optionsBuilder.UseSqlite(conexionDB);
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Paciente>(entity =>
            {
                entity.HasKey(col => col.IdPaciente);
                entity.Property(col => col.IdPaciente).IsRequired().ValueGeneratedOnAdd();

            });
                
        }
    }
}
