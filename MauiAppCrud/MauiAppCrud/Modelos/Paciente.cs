using System.ComponentModel.DataAnnotations;
using CommunityToolkit.Mvvm.ComponentModel;
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
        public string NivelActividad { get; set; }

        // Sedentario, Ligero, Moderado, Activo, Muy activo


        public double IndiceMasa
        {
            get
            {
                double estaturaMetros = Estatura / 100.0;
                double imc = Peso / Math.Pow(estaturaMetros, 2);
                return Math.Truncate(imc * 100) / 100;
            }
        }

        public double PorcentajeGrasaCorporal
        {
            get
            {
                double pgc;

                if (Sexo == "Masculino")
                {
                    pgc = 1.20 * IndiceMasa + 0.23 * Edad - 16.2;
                }
                else
                {
                    pgc = 1.20 * IndiceMasa + 0.23 * Edad - 5.4;
                }

                return Math.Truncate(pgc * 100) / 100;
            }
        }
        public double GastoEnergeticoTotal
        {
            get
            {
                double tmb;

                if (Sexo == "Masculino")
                {
                    tmb = 88.36 + (13.4 * Peso) + (4.8 * Estatura) - (5.7 * Edad);
                }
                else
                {
                    tmb = 447.6 + (9.2 * Peso) + (3.1 * Estatura) - (4.3 * Edad);
                }

                double factor;

                switch (NivelActividad)
                {
                    case "Sedentario":
                        factor = 1.2;
                        break;
                    case "Ligero":
                        factor = 1.375;
                        break;
                    case "Moderado":
                        factor = 1.55;
                        break;
                    case "Activo":
                        factor = 1.725;
                        break;
                    case "Muy activo":
                        factor = 1.9;
                        break;
                    default:
                        factor = 1.2;
                        break;
                }

                double resultado = tmb * factor;
                return Math.Truncate(resultado * 100) / 100;
            }
        }

    }
}
