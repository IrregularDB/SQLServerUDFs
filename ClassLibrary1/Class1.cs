using Microsoft.SqlServer.Server;
using System;

namespace ClassLibrary1
{
    public class Class1
    {
        [SqlFunction(DataAccess = DataAccessKind.Read)]
        public static int addOne(int a)
        {
            return a + 1;
        }
    }
}
