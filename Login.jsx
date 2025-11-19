
import { useState } from "react";

export default function Login() {
  const [correo, setCorreo] = useState("");
  const [clave, setClave] = useState("");

  const handleLogin = (e) => {
    e.preventDefault();
    alert(`Bienvenido ${correo}`);
  };

  return (
    <div className="flex justify-center items-center h-[80vh] bg-yellow-100">
      <form onSubmit={handleLogin} className="bg-white p-6 rounded-xl shadow-lg w-96">
        <h2 className="text-green-600 text-2xl mb-4 font-bold">Iniciar Sesión</h2>
        <input className="border p-2 w-full mb-3" placeholder="Correo" value={correo} onChange={(e) => setCorreo(e.target.value)} />
        <input className="border p-2 w-full mb-3" type="password" placeholder="Clave" value={clave} onChange={(e) => setClave(e.target.value)} />
        <button className="bg-green-600 text-white px-4 py-2 rounded w-full">Ingresar</button>
      </form>
    </div>
  );
}
