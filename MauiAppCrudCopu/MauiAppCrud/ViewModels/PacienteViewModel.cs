using CommunityToolkit.Mvvm.ComponentModel;


using CommunityToolkit.Mvvm.Input;

using Microsoft.EntityFrameworkCore;
using MauiAppCrud.DataAccess;
using MauiAppCrud.DTOs;
using MauiAppCrud.Utilidades;
using MauiAppCrud.Modelos;
using CommunityToolkit.Mvvm.Messaging;
using System.Collections.ObjectModel;


namespace MauiAppCrud.ViewModels
{
    public partial class PacienteViewModel : ObservableObject, IQueryAttributable
    {


        private readonly PacienteDbContext _dbContext;

        [ObservableProperty]
        private PacienteDTO pacienteDtO = new PacienteDTO();

        [ObservableProperty]
        private string tituloPagina;

        private int IdPaciente;

        [ObservableProperty]
        private bool loadingEsVisible = false;

        public PacienteViewModel(PacienteDbContext context)
        {
            _dbContext = context;
         

        }

        public async void ApplyQueryAttributes(IDictionary<string, object> query)
        {
            var id = int.Parse(query["id"].ToString());
            IdPaciente = id;

            if (IdPaciente == 0)
            {
                TituloPagina = "Nuevo Paciente";

            }
            else
            {
                TituloPagina = "Editar Paciente";
                LoadingEsVisible = true;
                await Task.Run(async () =>
                {
                    var encontrado = await _dbContext.Pacientes.FirstAsync(p => p.IdPaciente == IdPaciente);

                    PacienteDtO.IdPaciente = encontrado.IdPaciente;
                    PacienteDtO.Nombre = encontrado.Nombre;
                    PacienteDtO.Apellido = encontrado.Apellido;
                    PacienteDtO.Edad = encontrado.Edad;
                    PacienteDtO.Peso = encontrado.Peso;
                    PacienteDtO.Estatura = encontrado.Estatura;
                    PacienteDtO.Sexo = encontrado.Sexo;
                    PacienteDtO.NivelActividad = encontrado.NivelActividad;


                    MainThread.BeginInvokeOnMainThread(() =>{LoadingEsVisible = false;});
                });
            } 
        }

        [RelayCommand]

        private async Task Guardar()
        {
            LoadingEsVisible = true;
            PacienteMensaje mensaje = new PacienteMensaje();


            await Task.Run(async () =>
            {
                if (IdPaciente == 0)
                {
                    var tbPaciente = new Paciente
                    {
                        Nombre = PacienteDtO.Nombre,
                        Apellido = PacienteDtO.Apellido,
                        Edad = PacienteDtO.Edad,
                        Peso = PacienteDtO.Peso,
                        Estatura = PacienteDtO.Estatura,
                        Sexo = PacienteDtO.Sexo,
                        NivelActividad = PacienteDtO.NivelActividad,

                    };

                    _dbContext.Pacientes.Add(tbPaciente);
                    await _dbContext.SaveChangesAsync();

                    PacienteDtO.IdPaciente= tbPaciente.IdPaciente;
                    mensaje = new PacienteMensaje()
                    {
                        EsCrear = true,
                        PacienteDtO = PacienteDtO
                    };

                }
                else
                {
                    var tbPaciente = await _dbContext.Pacientes.FirstAsync(p => p.IdPaciente == IdPaciente);
                    tbPaciente.Nombre = PacienteDtO.Nombre;
                    tbPaciente.Apellido = PacienteDtO.Apellido;
                    tbPaciente.Edad = PacienteDtO.Edad;
                    tbPaciente.Peso = PacienteDtO.Peso;
                    tbPaciente.Estatura = PacienteDtO.Estatura;
                    tbPaciente.Sexo = PacienteDtO.Sexo;
                    tbPaciente.NivelActividad = PacienteDtO.NivelActividad;
                    await _dbContext.SaveChangesAsync();
                    mensaje = new PacienteMensaje()
                    {
                        EsCrear = false,
                        PacienteDtO = PacienteDtO
                    };
                }

                MainThread.BeginInvokeOnMainThread(async () =>
                {
                    LoadingEsVisible = false;
                    WeakReferenceMessenger.Default.Send(new PacienteMensajeria(mensaje));
                    await Shell.Current.Navigation.PopAsync();


                });
               



            });
        }

    }
}
