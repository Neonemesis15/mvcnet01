using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Salas_AppMvc06.Service
{
    public interface ICrud<T>
    {
        // definir las firmas
        int create(T o);
        int update(T o);
        int delete(T o);
        List<T> readAll();
        T query(Object id);	
    }
}
