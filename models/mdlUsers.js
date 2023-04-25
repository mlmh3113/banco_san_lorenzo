const pool=require ("../db")



const getUser = async (user,pass)=>{
const query= 'select * from empleados where usuario = ? and contrasenia = ?';
const row= await pool.query(query,[user,pass]);
return row[0];
}

const getClient = async (dni)=>{
    const query = 'select * from clientes where dni = ?';
    const row= await pool.query(query,[dni]);
    return row[0];
}

const postAgregar = async (pdni,pnombre,papellido,pdomicilio,ptelefono,pusuario,pcontrasenia,pemail,pfNac)=>{
    const query = `insert into clientes (dni,nombre,apellido,domicilio,telefono,usuario,contrasenia,email,fNac) values("${pdni}","${pnombre}","${papellido}","${pdomicilio}","${ptelefono}","${pusuario}","${pcontrasenia}","${pemail}","${pfNac}")`;
const rows = await pool.query(query);
return rows;
}

const modClient=async(pdni,pnombre,papellido,pdomicilio,ptelefono,pusuario,pemail,)=>{
    const query=`update clientes set nombre="${pnombre}",apellido="${papellido}",domicilio="${pdomicilio}",
    telefono=${ptelefono},usuario="${pusuario}",email="${pemail}" where dni=${pdni}`;
    const rows = await pool.query(query);
    return rows;
}

const elimClient = async(pdni)=>{
    const query = 'delete from clientes where dni = ?';
    const row= await pool.query(query,[pdni]);
    return row[0];
}

const getPrestamo= async(pdni)=>{
    const query = `select fecha , sucursales.nombre,monto from prestamos inner join sucursales on sucursales.idSucursal = prestamos.sucursal where prestamos.dni = ${pdni}`;
    const rows= await pool.query(query);
    return rows;
}

const getLimites= async(pdni)=>{
    const query = `select tarjetas.tipotarjeta,limite1,limite2,utilL1,utilL2,dispL1,dispL2 from ventatarj inner join tarjetas on ventatarj.idVentaTarj = tarjetas.idtarjeta where cliente = ${pdni}`;
    const rows= await pool.query(query);
    return rows;
}


const getSeguros= async(pdni)=>{
    const query = `select seguros.tiposeguro, seguros.precioseguro,sucursales.nombre as nomSuc,fecha
    from ventaseg
    inner join seguros on ventaseg.codseg = seguros.idseguro
    inner join sucursales on ventaseg.sucursal = sucursales.idSucursal
    where cliente = ${pdni}`;
    const rows= await pool.query(query);
    return rows;
}

const ventaSeguro= async(p_codSeg,p_cliente,p_vendedor,p_sucursal,p_fecha)=>{
    const query=`insert into ventaseg(codSeg,cliente,vendedor,sucursal,fecha) 
    values
    ("${p_codSeg}","${p_cliente}","${p_vendedor}","${p_sucursal}","${p_fecha}")`
    const rows= await pool.query(query);
    return rows;

}


const ventaPrestamo= async(p_cliente,p_monto,p_sucursal,p_vendedor,p_fecha)=>{
    const query=`insert into prestamos(dni,monto,sucursal,vendedor,fecha)
    values
    ("${p_cliente}","${p_monto}","${p_sucursal}","${p_vendedor}","${p_fecha}")`
    const rows= await pool.query(query);
    return rows;

}

const reportetarjetas=async(p_codigo)=>{
    const query=`select * from ventatarj where vendedor= ${p_codigo}`
    const rows= await pool.query(query);
    return rows;
}
const reportePrestamos=async(p_codigo)=>{
    const query=`select * from prestamos where vendedor= ${p_codigo}`
    const rows= await pool.query(query);
    return rows;
}

const reporteSeg=async(p_codigo)=>{
    const query=`select * from ventaseg where vendedor= ${p_codigo}`
    const rows= await pool.query(query);
    return rows;
}






module.exports = {getUser,getClient,postAgregar,modClient,elimClient,getPrestamo,getLimites,getSeguros,ventaSeguro,
    ventaPrestamo,reportetarjetas,reportePrestamos,reporteSeg};
