.class Lcom/example/playlink/MainActivity$4;
.super Lcom/example/playlink/LongOperation;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/playlink/MainActivity;->onTransver(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/example/playlink/MainActivity$4;->this$0:Lcom/example/playlink/MainActivity;

    .line 312
    invoke-direct {p0}, Lcom/example/playlink/LongOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 316
    const-string v4, "error"

    if-ne p1, v4, :cond_0

    .line 317
    iget-object v4, p0, Lcom/example/playlink/MainActivity$4;->this$0:Lcom/example/playlink/MainActivity;

    invoke-virtual {v4}, Lcom/example/playlink/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 320
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 321
    .local v2, "res":Landroid/content/res/Resources;
    const v4, 0x7f050008

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "network_error":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 323
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 326
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "network_error":Ljava/lang/String;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void
.end method
