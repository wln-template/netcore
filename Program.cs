﻿using System.IO;
using Microsoft.AspNetCore.Hosting;

namespace Template
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var host = new WebHostBuilder()
                .UseKestrel()
                .UseContentRoot(Directory.GetCurrentDirectory())
                .UseStartup<Startup>()
                .UseUrls("http://*:" + Wlniao.XCore.ListenPort)
                .Build();
            host.Run();
        }
    }
}