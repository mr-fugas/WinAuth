using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddEdit
{
    public static class Connector
    {
        private static Model1Container connect;

        public static Model1Container GetContext()
        {
            if (connect == null)
            {
                connect = new Model1Container();
            }
            return connect;
        }

        public static User currentUser;
    }


}
