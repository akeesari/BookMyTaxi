using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using BookMyTaxi.Models;

namespace BookMyTaxi.Controllers
{
    public class OurServicesController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

       
    }
}
