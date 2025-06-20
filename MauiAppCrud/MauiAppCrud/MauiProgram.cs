﻿using Microsoft.Extensions.Logging;

using MauiAppCrud.DataAccess;

using MauiAppCrud.ViewModels;
using MauiAppCrud.Views;

namespace MauiAppCrud
{
    public static class MauiProgram

    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                });


            var dbContext = new PacienteDbContext();
            dbContext.Database.EnsureCreated();
            dbContext.Dispose();


            builder.Services.AddDbContext<PacienteDbContext>();

            builder.Services.AddTransient<PacientePage>();
            builder.Services.AddTransient<PacienteViewModel>();


            builder.Services.AddTransient<MainPage>();
            builder.Services.AddTransient<MainViewModel>();


            Routing.RegisterRoute(nameof(PacientePage), typeof(PacientePage));


#if DEBUG
            builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}
