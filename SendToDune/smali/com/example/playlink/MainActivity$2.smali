.class Lcom/example/playlink/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lcom/example/playlink/MainActivity$2;->this$0:Lcom/example/playlink/MainActivity;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 162
    iget-object v1, p0, Lcom/example/playlink/MainActivity$2;->this$0:Lcom/example/playlink/MainActivity;

    # getter for: Lcom/example/playlink/MainActivity;->EditTextIP:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/example/playlink/MainActivity;->access$0(Lcom/example/playlink/MainActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "ed_ip":Ljava/lang/String;
    sget-object v1, Lcom/example/playlink/MainActivity;->ip_adress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/example/playlink/MainActivity$2;->this$0:Lcom/example/playlink/MainActivity;

    invoke-virtual {v1}, Lcom/example/playlink/MainActivity;->save_play()V

    .line 166
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
