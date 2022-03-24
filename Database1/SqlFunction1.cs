using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;


public partial class UserDefinedFunctions
{
    [Microsoft.SqlServer.Server.SqlFunction]
    public static int SqlFunction1(int a)
    {
        // Put your code here
        return DecompressModelsUtil3.Class1.Increment(a);
    }
}
