using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;

namespace MauiAppCrud.Modelos
{
    public class Paciente
    {
        [Key]
        public int IdPaciente { get; set; } 

        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public int Edad { get; set; }
        public double Peso { get; set; } // en kilogramos
        public double Estatura { get; set; } // en metros
        public string Sexo { get; set; } // "Masculino" o "Femenino"
        public string NivelActividad { get; set; } // Sedentario, Ligero, Moderado, Activo, Muy activo

     
        public double IndiceMasa => Peso / (Estatura * Estatura);

    
        public double PorcentajeGrasaCorporal =>
            Sexo == "Masculino"
            ? 1.20 * IndiceMasa + 0.23 * Edad - 16.2
            : 1.20 * IndiceMasa + 0.23 * Edad - 5.4;

        public double GastoEnergeticoTotal
        {
            get
            {
                double tmb = Sexo == "Masculino"
                    ? 88.36 + (13.4 * Peso) + (4.8 * (Estatura * 100)) - (5.7 * Edad)
                    : 447.6 + (9.2 * Peso) + (3.1 * (Estatura * 100)) - (4.3 * Edad);

                double factor = NivelActividad switch
                {
                    "Sedentario" => 1.2,
                    "Ligero" => 1.375,
                    "Moderado" => 1.55,
                    "Activo" => 1.725,
                    "Muy activo" => 1.9,
                    _ => 1.2
                };
                return tmb * factor;
            }
        }
    }
}
