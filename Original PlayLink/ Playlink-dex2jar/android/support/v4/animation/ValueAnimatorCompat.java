package android.support.v4.animation;

import android.view.View;

public abstract interface ValueAnimatorCompat
{
  public abstract void addListener(AnimatorListenerCompat paramAnimatorListenerCompat);
  
  public abstract void addUpdateListener(AnimatorUpdateListenerCompat paramAnimatorUpdateListenerCompat);
  
  public abstract void cancel();
  
  public abstract float getAnimatedFraction();
  
  public abstract void setDuration(long paramLong);
  
  public abstract void setTarget(View paramView);
  
  public abstract void start();
}


/* Location:              C:\Decompile\Playlink-dex2jar.jar!\android\support\v4\animation\ValueAnimatorCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */