package android.support.v4.os;

import android.os.Environment;
import java.io.File;

class EnvironmentCompatKitKat
{
  public static String getStorageState(File paramFile)
  {
    return Environment.getStorageState(paramFile);
  }
}


/* Location:              C:\Decompile\Playlink-dex2jar.jar!\android\support\v4\os\EnvironmentCompatKitKat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */