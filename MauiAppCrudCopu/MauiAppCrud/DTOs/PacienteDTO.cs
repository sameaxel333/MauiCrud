using CommunityToolkit.Mvvm.ComponentModel;

namespace MauiAppCrud.DTOs
{
    public partial class PacienteDTO : ObservableObject
    {

        [ObservableProperty]
        public int idPaciente;
        [ObservableProperty]
        public string nombre;
        [ObservableProperty]
        public string apellido;
        [ObservableProperty]
        public int edad;

        [ObservableProperty]
        public double peso;

        [ObservableProperty]
        public double estatura;

        [ObservableProperty]
        public string sexo; // "Masculino" o "Femenino"

        [ObservableProperty]
        public string nivelActividad; // Sedentario, Ligero, Moderado, Activo, Muy activo

        [ObservableProperty]
        public double incdiceMasa;

        [ObservableProperty]
        public double porcentajeGrasaCorporal;

        [ObservableProperty]
        public double gastoEnergeticoTotal;











    }

}
