.class Lcom/example/playlink/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/playlink/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/playlink/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/playlink/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/playlink/MainActivity$3;->this$0:Lcom/example/playlink/MainActivity;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v4, p0, Lcom/example/playlink/MainActivity$3;->this$0:Lcom/example/playlink/MainActivity;

    invoke-virtual {v4}, Lcom/example/playlink/MainActivity;->save_play()V

    .line 174
    iget-object v4, p0, Lcom/example/playlink/MainActivity$3;->this$0:Lcom/example/playlink/MainActivity;

    invoke-virtual {v4}, Lcom/example/playlink/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 177
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 178
    .local v1, "res":Landroid/content/res/Resources;
    const v4, 0x7f050009

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "save_settings":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 181
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 182
    return-void
.end method
