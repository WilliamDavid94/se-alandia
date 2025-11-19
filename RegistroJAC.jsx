import React, { useState } from "react";

export default function RegistroJAC() {
  const [form, setForm] = useState({"NombreJAC": "", "NumeroPersoneriaJuridica": "", "FechaExpPersoneria": "", "EntidadExpide": "", "CorreoJAC": "", "Clave": ""});

  return (
    <div className="min-h-screen bg-gradient-to-b from-green-100 via-yellow-50 to-white flex flex-col items-center py-10 px-4">
      <div className="text-center mb-10">
        <h1 className="text-4xl font-bold text-green-800">Registro de JAC</h1>
        <p className="text-gray-700 mt-2">Complete los datos de la Junta de Acción Comunal</p>
      </div>

      <div className="bg-white shadow-lg rounded-2xl p-10 w-full max-w-4xl border-t-4 border-green-600">
        <form className="grid grid-cols-1 md:grid-cols-2 gap-6">
          
          <div><label className='block font-semibold text-gray-700 mb-2'>Nombre JAC</label><input type='text' className='w-full border border-gray-300 rounded-lg p-2' /></div>
          <div><label className='block font-semibold text-gray-700 mb-2'>Número Personería Jurídica</label><input type='text' className='w-full border border-gray-300 rounded-lg p-2' /></div>
          <div><label className='block font-semibold text-gray-700 mb-2'>Fecha Expedición Personería</label><input type='date' className='w-full border border-gray-300 rounded-lg p-2' /></div>
          <div><label className='block font-semibold text-gray-700 mb-2'>Entidad que Expide</label><input type='text' className='w-full border border-gray-300 rounded-lg p-2' /></div>
          <div><label className='block font-semibold text-gray-700 mb-2'>Correo JAC</label><input type='email' className='w-full border border-gray-300 rounded-lg p-2' /></div>
          <div><label className='block font-semibold text-gray-700 mb-2'>Clave</label><input type='password' className='w-full border border-gray-300 rounded-lg p-2' /></div>
        
        </form>

        <div className="mt-8 flex justify-center">
          <button className="bg-green-700 hover:bg-green-800 text-white px-8 py-3 rounded-lg font-semibold shadow-md">
            Guardar Registro
          </button>
        </div>
      </div>

      <footer className="mt-10 text-gray-600 text-sm">
        © 2025 Junta de Acción Comunal - Municipio de Madrid, Cundinamarca
      </footer>
    </div>
  );
}
