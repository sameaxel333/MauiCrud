using CommunityToolkit.Mvvm.ComponentModel;


using CommunityToolkit.Mvvm.Input;

using Microsoft.EntityFrameworkCore;
using MauiAppCrud.DataAccess;
using MauiAppCrud.DTOs;
using MauiAppCrud.Utilidades;
using MauiAppCrud.Modelos;
using CommunityToolkit.Mvvm.Messaging;
using System.Collections.ObjectModel;
using MauiAppCrud.Views;

namespace MauiAppCrud.ViewModels
{
    public partial class MainViewModel : ObservableObject 
    {


        private readonly PacienteDbContext _dbContext;
        [ObservableProperty]
        private ObservableCollection<PacienteDTO> listaPaciente = new ObservableCollection<PacienteDTO>();


        public MainViewModel(PacienteDbContext context)
        {
            _dbContext = context;
            MainThread.BeginInvokeOnMainThread(new Action(async () => await Obtener()));

            WeakReferenceMessenger.Default.Register<PacienteMensajeria>(this, (r, m) =>
            {
                PacienteMensajeRecibido(m.Value);
            });

        }


        public async Task Obtener()
        {
            var lista = await _dbContext.Pacientes.ToListAsync();
            if (lista.Any())
            {
                foreach(var item in lista)
                {
                    ListaPaciente.Add(new PacienteDTO
                    {
                        IdPaciente = item.IdPaciente,
                        Nombre = item.Nombre,
                        Apellido = item.Apellido,
                        Edad = item.Edad,
                        Peso = item.Peso,
                        Estatura = item.Estatura,
                        Sexo = item.Sexo,
                        NivelActividad = item.NivelActividad,
                        IndiceMasa = item.IndiceMasa,
                        PorcentajeGrasaCorporal = item.PorcentajeGrasaCorporal,
                        GastoEnergeticoTotal = item.GastoEnergeticoTotal
                    });
                }
            }
        }


        private void PacienteMensajeRecibido(PacienteMensaje pacienteMensaje)
        {
            var pacientDto = pacienteMensaje.PacienteDtO;

            if (pacienteMensaje.EsCrear)
            {
                ListaPaciente.Add (pacientDto);
            }
            else
            {
                var encontrado = ListaPaciente.
                    First(p=>p.IdPaciente == pacientDto.IdPaciente);

                encontrado.Nombre = pacientDto.Nombre;
                encontrado.Apellido = pacientDto.Apellido;
                encontrado.Edad = pacientDto.Edad;
                encontrado.Peso = pacientDto.Peso;
                encontrado.Estatura = pacientDto.Estatura;
                encontrado.Sexo = pacientDto.Sexo;
                encontrado.NivelActividad = pacientDto.NivelActividad;
                encontrado.IndiceMasa = pacientDto.IndiceMasa;
                encontrado.PorcentajeGrasaCorporal = pacientDto.PorcentajeGrasaCorporal;
                encontrado.GastoEnergeticoTotal = pacientDto.PorcentajeGrasaCorporal;
                
                
            }
        }


        [RelayCommand]

        private async Task Crear()
        {
            var uri = $"{nameof(PacientePage)}?id=0";
            await Shell.Current.GoToAsync(uri);
        }


        [RelayCommand]
        private async Task Editar(PacienteDTO pacienteDto)
            
        {
            var uri = $"{nameof(PacientePage)}?id={pacienteDto.IdPaciente}";
            await Shell.Current.GoToAsync(uri);
        }

        [RelayCommand]

        private async Task Eliminar(PacienteDTO pacienteDto)

        {
            bool answer = await Shell.Current.DisplayAlert("Confirmar", "¿Desea eliminar el paciente?", "Si", "No");

            if (answer)
            {
                var encontrado = await _dbContext.Pacientes.FirstAsync(p => p.IdPaciente == pacienteDto.IdPaciente);
                _dbContext.Pacientes.Remove(encontrado);
                await _dbContext.SaveChangesAsync();
                ListaPaciente.Remove(pacienteDto);
            }
        }



    }
}
