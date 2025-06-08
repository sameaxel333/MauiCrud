namespace MauiAppCrud.Views;
using MauiAppCrud.ViewModels;
public partial class PacientePage : ContentPage
{
	public PacientePage(PacienteViewModel pacienteViewModel)
	{
		InitializeComponent();
		BindingContext = pacienteViewModel;
    }
}