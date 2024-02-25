using Microsoft.AspNetCore.OData;
using Microsoft.EntityFrameworkCore;
using Microsoft.OData.ModelBuilder;
using OdataDemo.Models;

namespace OdataDemo
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var modelBuilder = new ODataConventionModelBuilder();
            modelBuilder.EntitySet<Student>("Students");

            var builder = WebApplication.CreateBuilder(args);

            builder.Services.AddControllers().AddOData(options => 
            options.EnableQueryFeatures().AddRouteComponents("odata", modelBuilder.GetEdmModel()));

            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();

            builder.Services.AddDbContext<OdataContext>
                (options => options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

            var app = builder.Build();

            if (app.Environment.IsDevelopment())
            {
                app.UseSwagger();
                app.UseSwaggerUI();
            }

            app.UseAuthorization();

            app.MapControllers();
            app.Run();

        }
    }
}