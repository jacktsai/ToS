using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class Fake_API
{
    private static API.Result _startURLRequest(string path, Dictionary<string, object> param, Action<URLRequest> onSuccess, Action<URLRequest> onFailed, API.Mode mode = API.Mode.NORMAL, bool isDataRequest = false)
    {
        return null;
    }

    public static API.Result DataRequest(string path, Dictionary<string, object> param, Action<URLRequest> onSuccess, API.Mode mode = API.Mode.NORMAL)
    {
        return Fake_API._startURLRequest(path, param, onSuccess, delegate(URLRequest r)
        {
        }, mode, true);
    }

    public static API.Result DataRequest_2(string path, Dictionary<string, object> param, Action<URLRequest> onSuccess, API.Mode mode = API.Mode.NORMAL)
    {
        return MyAPI._startURLRequest(path, param, onSuccess, delegate(URLRequest r)
        {
        }, mode, true);
    }

    public static API.Result Request(string path, Dictionary<string, object> param, Action<URLRequest> onSuccess, Action<URLRequest> onFailed, API.Mode mode = API.Mode.NORMAL)
    {
        return Fake_API._startURLRequest(path, param, onSuccess, onFailed, mode, false);
    }

    public static API.Result Request_2(string path, Dictionary<string, object> param, Action<URLRequest> onSuccess, Action<URLRequest> onFailed, API.Mode mode = API.Mode.NORMAL)
    {
        return MyAPI._startURLRequest(path, param, onSuccess, onFailed, mode, false);
    }
}