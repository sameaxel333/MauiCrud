namespace MauiAppCrud.Views;
using MauiAppCrud.ViewModels;
public partial class PacientePage : ContentPage
{
	public PacientePage(PacienteViewModel pacienteViewModel)
	{
		InitializeComponent();
		BindingContext = pacienteViewModel;
    }


    private void EdadEntry_TextChanged(object sender, TextChangedEventArgs e)
    {
        var entry = sender as Entry;

        // Allow empty input for now (to not block deletion)
        if (string.IsNullOrWhiteSpace(e.NewTextValue))
            return;

        // Check if input is a number
        if (int.TryParse(e.NewTextValue, out int edad))
        {
            // Check valid age range
            if (edad < 0 || edad > 120)
            {
                // Reset entry or handle invalid input
                entry.Text = "";
                DisplayAlert("Edad inválida", "Ingresa una edad entre 0 y 120.", "OK");
            }
        }
        else
        {
            // If not numeric, reset the entry
            entry.Text = "";
        }





    }


    private void PesoEntry_TextChanged(object sender, TextChangedEventArgs e)
    {
        var entry = sender as Entry;

        if (string.IsNullOrWhiteSpace(e.NewTextValue))
            return;

        if (double.TryParse(e.NewTextValue, out double peso))
        {
            if (peso < 0 || peso > 300)
            {
                entry.Text = "";
                DisplayAlert("Peso inválido", "Ingrese un peso entre 1 kg y 300 kg.", "OK");
            }
        }
        else
        {
            entry.Text = "";
        }
    }

    private void EstaturaEntry_TextChanged(object sender, TextChangedEventArgs e)
    {
        var entry = sender as Entry;

        if (string.IsNullOrWhiteSpace(e.NewTextValue))
            return;

        if (int.TryParse(e.NewTextValue, out int estatura))
        {
            if (estatura < 0 || estatura > 250)
            {
                entry.Text = "";
                DisplayAlert("Estatura inválida", "Ingrese una estatura entre 30 cm y 250 cm.", "OK");
            }
        }
        else
        {
            entry.Text = "";
        }
    }
   


}