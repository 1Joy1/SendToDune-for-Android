.class Lcom/example/sendtodune/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/sendtodune/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/sendtodune/MainActivity;

.field private final synthetic val$EditTextUrl:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/example/sendtodune/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/sendtodune/MainActivity$1;->this$0:Lcom/example/sendtodune/MainActivity;

    iput-object p2, p0, Lcom/example/sendtodune/MainActivity$1;->val$EditTextUrl:Landroid/widget/EditText;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v1, p0, Lcom/example/sendtodune/MainActivity$1;->val$EditTextUrl:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "strCatName":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/sendtodune/MainActivity$1;->this$0:Lcom/example/sendtodune/MainActivity;

    invoke-virtual {v1, v0}, Lcom/example/sendtodune/MainActivity;->onTransver(Ljava/lang/String;)V

    .line 154
    return-void
.end method
