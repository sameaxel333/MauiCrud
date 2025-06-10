



namespace MauiAppCrud.Utilidades
{
    public static class ConexionDB
    {
        public static string DevolverRuta(string nombreBaseDatos)
        {
            string RutaBaseDatos = string.Empty;
            if(DeviceInfo.Platform == DevicePlatform.Android)
            {
                RutaBaseDatos = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData);
                RutaBaseDatos = Path.Combine(RutaBaseDatos, nombreBaseDatos);
            }else if (DeviceInfo.Platform == DevicePlatform.iOS)
            {
                RutaBaseDatos = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
                RutaBaseDatos = Path.Combine(RutaBaseDatos, "..", "Library", nombreBaseDatos);
            }

            return RutaBaseDatos;
        }


    }
}
