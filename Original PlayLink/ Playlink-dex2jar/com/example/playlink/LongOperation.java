package com.example.playlink;

import android.os.AsyncTask;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

class LongOperation
  extends AsyncTask<String, Void, String>
{
  protected String doInBackground(String... paramVarArgs)
  {
    String str = "error";
    paramVarArgs = paramVarArgs[0];
    try
    {
      HttpEntity localHttpEntity = new DefaultHttpClient().execute(new HttpGet(paramVarArgs)).getEntity();
      paramVarArgs = str;
      if (localHttpEntity != null) {
        paramVarArgs = EntityUtils.toString(localHttpEntity);
      }
      return paramVarArgs;
    }
    catch (UnsupportedEncodingException paramVarArgs)
    {
      paramVarArgs.printStackTrace();
      return "error";
    }
    catch (ClientProtocolException paramVarArgs)
    {
      paramVarArgs.printStackTrace();
      return "error";
    }
    catch (IOException paramVarArgs)
    {
      paramVarArgs.printStackTrace();
    }
    return "error";
  }
  
  protected void onPostExecute(String paramString) {}
  
  protected void onPreExecute() {}
  
  protected void onProgressUpdate(Void... paramVarArgs) {}
}


/* Location:              C:\Decompile\Playlink-dex2jar.jar!\com\example\playlink\LongOperation.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */