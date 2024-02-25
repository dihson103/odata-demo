using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.OData.Deltas;
using Microsoft.AspNetCore.OData.Formatter;
using Microsoft.AspNetCore.OData.Query;
using Microsoft.AspNetCore.OData.Routing.Controllers;
using Microsoft.EntityFrameworkCore;
using OdataDemo.Entities;

namespace OdataDemo.Controllers
{
    public class StudentsController : ODataController
    {
        private readonly OdataContext _context;

        public StudentsController(OdataContext context)
        {
            _context = context;
        }

        [EnableQuery]
        public IActionResult Get()
        {
            return Ok(_context.Students);
        }

        [EnableQuery]
        public IActionResult Get([FromODataUri] int key)
        {
            var student = _context.Students.FirstOrDefault(s => s.Id == key);
            if (student == null)
            {
                return NotFound();
            }
            return Ok(student);
        }

        public async Task<IActionResult> Post([FromBody] Student student)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _context.Students.Add(student);
            await _context.SaveChangesAsync();

            return Created(student);
        }

        public async Task<IActionResult> Patch([FromODataUri] int key, [FromBody] Delta<Student> studentDelta)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var student = await _context.Students.FindAsync(key);

            if (student == null)
            {
                return NotFound();
            }

            studentDelta.Patch(student);

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!StudentExists(key))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return Updated(student);
        }

        public async Task<IActionResult> Delete([FromODataUri] int key)
        {
            var student = await _context.Students.FindAsync(key);
            if (student == null)
            {
                return NotFound();
            }

            _context.Students.Remove(student);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool StudentExists(int key)
        {
            return _context.Students.Any(s => s.Id == key);
        }
    }
}
