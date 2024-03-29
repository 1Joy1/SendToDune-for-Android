package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;

public class DrawableCompat
{
  static final DrawableImpl IMPL = new BaseDrawableImpl();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23)
    {
      IMPL = new MDrawableImpl();
      return;
    }
    if (i >= 22)
    {
      IMPL = new LollipopMr1DrawableImpl();
      return;
    }
    if (i >= 21)
    {
      IMPL = new LollipopDrawableImpl();
      return;
    }
    if (i >= 19)
    {
      IMPL = new KitKatDrawableImpl();
      return;
    }
    if (i >= 17)
    {
      IMPL = new JellybeanMr1DrawableImpl();
      return;
    }
    if (i >= 11)
    {
      IMPL = new HoneycombDrawableImpl();
      return;
    }
  }
  
  public static int getLayoutDirection(Drawable paramDrawable)
  {
    return IMPL.getLayoutDirection(paramDrawable);
  }
  
  public static boolean isAutoMirrored(Drawable paramDrawable)
  {
    return IMPL.isAutoMirrored(paramDrawable);
  }
  
  public static void jumpToCurrentState(Drawable paramDrawable)
  {
    IMPL.jumpToCurrentState(paramDrawable);
  }
  
  public static void setAutoMirrored(Drawable paramDrawable, boolean paramBoolean)
  {
    IMPL.setAutoMirrored(paramDrawable, paramBoolean);
  }
  
  public static void setHotspot(Drawable paramDrawable, float paramFloat1, float paramFloat2)
  {
    IMPL.setHotspot(paramDrawable, paramFloat1, paramFloat2);
  }
  
  public static void setHotspotBounds(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    IMPL.setHotspotBounds(paramDrawable, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static void setLayoutDirection(Drawable paramDrawable, int paramInt)
  {
    IMPL.setLayoutDirection(paramDrawable, paramInt);
  }
  
  public static void setTint(Drawable paramDrawable, int paramInt)
  {
    IMPL.setTint(paramDrawable, paramInt);
  }
  
  public static void setTintList(Drawable paramDrawable, ColorStateList paramColorStateList)
  {
    IMPL.setTintList(paramDrawable, paramColorStateList);
  }
  
  public static void setTintMode(Drawable paramDrawable, PorterDuff.Mode paramMode)
  {
    IMPL.setTintMode(paramDrawable, paramMode);
  }
  
  public static <T extends Drawable> T unwrap(Drawable paramDrawable)
  {
    Drawable localDrawable = paramDrawable;
    if ((paramDrawable instanceof DrawableWrapper)) {
      localDrawable = ((DrawableWrapper)paramDrawable).getWrappedDrawable();
    }
    return localDrawable;
  }
  
  public static Drawable wrap(Drawable paramDrawable)
  {
    return IMPL.wrap(paramDrawable);
  }
  
  static class BaseDrawableImpl
    implements DrawableCompat.DrawableImpl
  {
    public int getLayoutDirection(Drawable paramDrawable)
    {
      return 0;
    }
    
    public boolean isAutoMirrored(Drawable paramDrawable)
    {
      return false;
    }
    
    public void jumpToCurrentState(Drawable paramDrawable) {}
    
    public void setAutoMirrored(Drawable paramDrawable, boolean paramBoolean) {}
    
    public void setHotspot(Drawable paramDrawable, float paramFloat1, float paramFloat2) {}
    
    public void setHotspotBounds(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
    
    public void setLayoutDirection(Drawable paramDrawable, int paramInt) {}
    
    public void setTint(Drawable paramDrawable, int paramInt)
    {
      DrawableCompatBase.setTint(paramDrawable, paramInt);
    }
    
    public void setTintList(Drawable paramDrawable, ColorStateList paramColorStateList)
    {
      DrawableCompatBase.setTintList(paramDrawable, paramColorStateList);
    }
    
    public void setTintMode(Drawable paramDrawable, PorterDuff.Mode paramMode)
    {
      DrawableCompatBase.setTintMode(paramDrawable, paramMode);
    }
    
    public Drawable wrap(Drawable paramDrawable)
    {
      return DrawableCompatBase.wrapForTinting(paramDrawable);
    }
  }
  
  static abstract interface DrawableImpl
  {
    public abstract int getLayoutDirection(Drawable paramDrawable);
    
    public abstract boolean isAutoMirrored(Drawable paramDrawable);
    
    public abstract void jumpToCurrentState(Drawable paramDrawable);
    
    public abstract void setAutoMirrored(Drawable paramDrawable, boolean paramBoolean);
    
    public abstract void setHotspot(Drawable paramDrawable, float paramFloat1, float paramFloat2);
    
    public abstract void setHotspotBounds(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
    
    public abstract void setLayoutDirection(Drawable paramDrawable, int paramInt);
    
    public abstract void setTint(Drawable paramDrawable, int paramInt);
    
    public abstract void setTintList(Drawable paramDrawable, ColorStateList paramColorStateList);
    
    public abstract void setTintMode(Drawable paramDrawable, PorterDuff.Mode paramMode);
    
    public abstract Drawable wrap(Drawable paramDrawable);
  }
  
  static class HoneycombDrawableImpl
    extends DrawableCompat.BaseDrawableImpl
  {
    public void jumpToCurrentState(Drawable paramDrawable)
    {
      DrawableCompatHoneycomb.jumpToCurrentState(paramDrawable);
    }
    
    public Drawable wrap(Drawable paramDrawable)
    {
      return DrawableCompatHoneycomb.wrapForTinting(paramDrawable);
    }
  }
  
  static class JellybeanMr1DrawableImpl
    extends DrawableCompat.HoneycombDrawableImpl
  {
    public int getLayoutDirection(Drawable paramDrawable)
    {
      int i = DrawableCompatJellybeanMr1.getLayoutDirection(paramDrawable);
      if (i >= 0) {
        return i;
      }
      return 0;
    }
    
    public void setLayoutDirection(Drawable paramDrawable, int paramInt)
    {
      DrawableCompatJellybeanMr1.setLayoutDirection(paramDrawable, paramInt);
    }
  }
  
  static class KitKatDrawableImpl
    extends DrawableCompat.JellybeanMr1DrawableImpl
  {
    public boolean isAutoMirrored(Drawable paramDrawable)
    {
      return DrawableCompatKitKat.isAutoMirrored(paramDrawable);
    }
    
    public void setAutoMirrored(Drawable paramDrawable, boolean paramBoolean)
    {
      DrawableCompatKitKat.setAutoMirrored(paramDrawable, paramBoolean);
    }
    
    public Drawable wrap(Drawable paramDrawable)
    {
      return DrawableCompatKitKat.wrapForTinting(paramDrawable);
    }
  }
  
  static class LollipopDrawableImpl
    extends DrawableCompat.KitKatDrawableImpl
  {
    public void setHotspot(Drawable paramDrawable, float paramFloat1, float paramFloat2)
    {
      DrawableCompatLollipop.setHotspot(paramDrawable, paramFloat1, paramFloat2);
    }
    
    public void setHotspotBounds(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      DrawableCompatLollipop.setHotspotBounds(paramDrawable, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    
    public void setTint(Drawable paramDrawable, int paramInt)
    {
      DrawableCompatLollipop.setTint(paramDrawable, paramInt);
    }
    
    public void setTintList(Drawable paramDrawable, ColorStateList paramColorStateList)
    {
      DrawableCompatLollipop.setTintList(paramDrawable, paramColorStateList);
    }
    
    public void setTintMode(Drawable paramDrawable, PorterDuff.Mode paramMode)
    {
      DrawableCompatLollipop.setTintMode(paramDrawable, paramMode);
    }
    
    public Drawable wrap(Drawable paramDrawable)
    {
      return DrawableCompatLollipop.wrapForTinting(paramDrawable);
    }
  }
  
  static class LollipopMr1DrawableImpl
    extends DrawableCompat.LollipopDrawableImpl
  {
    public Drawable wrap(Drawable paramDrawable)
    {
      return DrawableCompatApi22.wrapForTinting(paramDrawable);
    }
  }
  
  static class MDrawableImpl
    extends DrawableCompat.LollipopMr1DrawableImpl
  {
    public int getLayoutDirection(Drawable paramDrawable)
    {
      return DrawableCompatApi23.getLayoutDirection(paramDrawable);
    }
    
    public void setLayoutDirection(Drawable paramDrawable, int paramInt)
    {
      DrawableCompatApi23.setLayoutDirection(paramDrawable, paramInt);
    }
  }
}


/* Location:              C:\Decompile\Playlink-dex2jar.jar!\android\support\v4\graphics\drawable\DrawableCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */