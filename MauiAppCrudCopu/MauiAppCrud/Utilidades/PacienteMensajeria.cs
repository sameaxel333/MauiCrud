using CommunityToolkit.Mvvm.Messaging.Messages;

namespace MauiAppCrud.Utilidades
{
    internal class PacienteMensajeria : ValueChangedMessage<PacienteMensaje>
    {

        public PacienteMensajeria(PacienteMensaje value) : base(value)
        {


        }
       

    }
}
