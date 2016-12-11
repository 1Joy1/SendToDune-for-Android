package com.example.playlink;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Toast;
import java.util.Set;

public class MainActivity
  extends Activity
  implements AdapterView.OnItemSelectedListener
{
  public static final String APP_PREFERENCES = "mysettings";
  public static final String APP_PREFERENCES_AUTO_CLOSE = "auto_close";
  public static final String APP_PREFERENCES_IP = "ip_adress";
  public static final String APP_PREFERENCES_PLAYLINK_STOP = "playlink_stop";
  public static final String APP_PREFERENCES_QUALITY = "quality";
  public static String auto_close;
  public static String ip_adress;
  public static String playlink_stop;
  public static String quality;
  public static String spinner_Selection;
  private EditText EditTextIP;
  private CheckBox checkBox_playlink_stop;
  private SharedPreferences mSettings;
  
  void handleSendText(Intent paramIntent)
  {
    String str2 = paramIntent.getStringExtra("android.intent.extra.TEXT");
    String str1 = str2;
    if (str2 == null) {
      str1 = paramIntent.getData().toString();
    }
    if (str1 != null)
    {
      ((EditText)findViewById(2131296257)).setText(str1);
      onTransver(str1);
      if (auto_close.equals("true")) {
        finish();
      }
    }
  }
  
  public void onCheckboxClicked(View paramView)
  {
    if (((CheckBox)findViewById(2131296260)).isChecked()) {
      if (playlink_stop.equals("false")) {
        save_play();
      }
    }
    while (!playlink_stop.equals("true")) {
      return;
    }
    save_play();
  }
  
  protected void onCreate(final Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903040);
    this.mSettings = getSharedPreferences("mysettings", 0);
    ip_adress = this.mSettings.getString("ip_adress", "");
    if (ip_adress == "") {
      ip_adress = "192.168.0.6";
    }
    quality = this.mSettings.getString("quality", "");
    if (quality == "") {
      quality = "1";
    }
    auto_close = this.mSettings.getString("auto_close", "");
    if (auto_close == "") {
      auto_close = "true";
    }
    playlink_stop = this.mSettings.getString("playlink_stop", "");
    if (playlink_stop == "") {
      playlink_stop = "true";
    }
    paramBundle = (Spinner)findViewById(2131296259);
    Object localObject = ArrayAdapter.createFromResource(this, 2131099648, 17367048);
    ((ArrayAdapter)localObject).setDropDownViewResource(17367049);
    paramBundle.setAdapter((SpinnerAdapter)localObject);
    paramBundle.setOnItemSelectedListener(this);
    localObject = getIntent();
    String str1 = ((Intent)localObject).getAction();
    String str2 = ((Intent)localObject).getType();
    Set localSet = ((Intent)localObject).getCategories();
    String str3 = ((Intent)localObject).getScheme();
    if (("android.intent.action.SEND".equals(str1)) && (str2 != null) && ("text/plain".equals(str2))) {
      handleSendText((Intent)localObject);
    }
    if (("android.intent.action.VIEW".equals(str1)) && (str2 != null) && ("video/*".equals(str2))) {
      handleSendText((Intent)localObject);
    }
    if (("android.intent.action.VIEW".equals(str1)) && (localSet != null) && ("http".equals(str3))) {
      handleSendText((Intent)localObject);
    }
    this.EditTextIP = ((EditText)findViewById(2131296261));
    ((EditText)findViewById(2131296261)).setText(ip_adress);
    this.checkBox_playlink_stop = ((CheckBox)findViewById(2131296260));
    if (playlink_stop.equals("true"))
    {
      ((CheckBox)findViewById(2131296260)).setChecked(true);
      localObject = quality;
      switch (((String)localObject).hashCode())
      {
      }
    }
    for (;;)
    {
      paramBundle = (EditText)findViewById(2131296257);
      ((Button)findViewById(2131296258)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          paramAnonymousView = paramBundle.getText().toString();
          MainActivity.this.onTransver(paramAnonymousView);
        }
      });
      this.EditTextIP.setOnKeyListener(new View.OnKeyListener()
      {
        public boolean onKey(View paramAnonymousView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
        {
          if (!MainActivity.this.EditTextIP.getText().toString().equals(MainActivity.ip_adress)) {
            MainActivity.this.save_play();
          }
          return false;
        }
      });
      ((Button)findViewById(2131296262)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          MainActivity.this.save_play();
          paramAnonymousView = MainActivity.this.getApplicationContext();
          Toast.makeText(paramAnonymousView, paramAnonymousView.getResources().getString(2131034121), 0).show();
        }
      });
      return;
      ((CheckBox)findViewById(2131296260)).setChecked(false);
      break;
      if (((String)localObject).equals("0"))
      {
        paramBundle.setSelection(0);
        spinner_Selection = "0";
        continue;
        if (((String)localObject).equals("1"))
        {
          paramBundle.setSelection(1);
          spinner_Selection = "1";
          continue;
          if (((String)localObject).equals("2"))
          {
            paramBundle.setSelection(2);
            spinner_Selection = "2";
          }
        }
      }
    }
  }
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    spinner_Selection = paramInt;
    if (!quality.equals(spinner_Selection)) {
      save_play();
    }
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
  
  public void onTransver(String paramString)
  {
    String str1 = null;
    String str2 = null;
    String str3 = quality;
    switch (str3.hashCode())
    {
    default: 
      if (playlink_stop.equals("false")) {
        str2 = "0";
      }
      break;
    }
    for (;;)
    {
      paramString = ("http://" + ip_adress + "/?page=playlink_set&quality=" + str1 + "&stop=" + str2 + "&url=" + paramString).trim().replace(" ", "%20");
      new LongOperation()
      {
        public void onPostExecute(String paramAnonymousString)
        {
          if (paramAnonymousString == "error")
          {
            Context localContext = MainActivity.this.getApplicationContext();
            String str = localContext.getResources().getString(2131034120);
            Toast.makeText(localContext, paramAnonymousString + str, 0).show();
          }
        }
      }.execute(new String[] { paramString });
      return;
      if (!str3.equals("0")) {
        break;
      }
      str1 = "hi";
      break;
      if (!str3.equals("1")) {
        break;
      }
      str1 = "mid";
      break;
      if (!str3.equals("2")) {
        break;
      }
      str1 = "lo";
      break;
      if (playlink_stop.equals("true")) {
        str2 = "1";
      }
    }
  }
  
  public void save_play()
  {
    ip_adress = this.EditTextIP.getText().toString();
    quality = spinner_Selection;
    this.checkBox_playlink_stop = ((CheckBox)findViewById(2131296260));
    if (this.checkBox_playlink_stop.isChecked()) {}
    for (playlink_stop = "true";; playlink_stop = "false")
    {
      this.mSettings = getSharedPreferences("mysettings", 0);
      SharedPreferences.Editor localEditor = this.mSettings.edit();
      localEditor.putString("ip_adress", ip_adress);
      localEditor.putString("quality", quality);
      localEditor.putString("auto_close", auto_close);
      localEditor.putString("playlink_stop", playlink_stop);
      localEditor.commit();
      return;
    }
  }
}


/* Location:              C:\Decompile\Playlink-dex2jar.jar!\com\example\playlink\MainActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */