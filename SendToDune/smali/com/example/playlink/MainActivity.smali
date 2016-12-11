.class public Lcom/example/playlink/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# static fields
.field public static final APP_PREFERENCES:Ljava/lang/String; = "mysettings"

.field public static final APP_PREFERENCES_AUTO_CLOSE:Ljava/lang/String; = "auto_close"

.field public static final APP_PREFERENCES_IP:Ljava/lang/String; = "ip_adress"

.field public static final APP_PREFERENCES_PLAYLINK_STOP:Ljava/lang/String; = "playlink_stop"

.field public static final APP_PREFERENCES_QUALITY:Ljava/lang/String; = "quality"

.field public static auto_close:Ljava/lang/String;

.field public static ip_adress:Ljava/lang/String;

.field public static playlink_stop:Ljava/lang/String;

.field public static quality:Ljava/lang/String;

.field public static spinner_Selection:Ljava/lang/String;


# instance fields
.field private EditTextIP:Landroid/widget/EditText;

.field private checkBox_playlink_stop:Landroid/widget/CheckBox;

.field private mSettings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/example/playlink/MainActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/example/playlink/MainActivity;->EditTextIP:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method handleSendText(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 217
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "sharedText":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 219
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    :cond_0
    if-eqz v1, :cond_1

    .line 223
    const v2, 0x7f090001

    invoke-virtual {p0, v2}, Lcom/example/playlink/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 224
    .local v0, "EditTextUrl":Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {p0, v1}, Lcom/example/playlink/MainActivity;->onTransver(Ljava/lang/String;)V

    .line 227
    sget-object v2, Lcom/example/playlink/MainActivity;->auto_close:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/example/playlink/MainActivity;->finish()V

    .line 231
    .end local v0    # "EditTextUrl":Landroid/widget/EditText;
    :cond_1
    return-void
.end method

.method public onCheckboxClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 190
    const v1, 0x7f090004

    invoke-virtual {p0, v1}, Lcom/example/playlink/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 191
    .local v0, "checkBox_playlink_stop":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    sget-object v1, Lcom/example/playlink/MainActivity;->playlink_stop:Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/example/playlink/MainActivity;->save_play()V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    sget-object v1, Lcom/example/playlink/MainActivity;->playlink_stop:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/example/playlink/MainActivity;->save_play()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/high16 v10, 0x7f030000

    invoke-virtual {p0, v10}, Lcom/example/playlink/MainActivity;->setContentView(I)V

    .line 74
    const-string v10, "mysettings"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/example/playlink/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lcom/example/playlink/MainActivity;->mSettings:Landroid/content/SharedPreferences;

    .line 76
    iget-object v10, p0, Lcom/example/playlink/MainActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v11, "ip_adress"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/example/playlink/MainActivity;->ip_adress:Ljava/lang/String;

    sget-object v10, Lcom/example/playlink/MainActivity;->ip_adress:Ljava/lang/String;

    const-string v11, ""

    if-ne v10, v11, :cond_0

    const-string v10, "192.168.0.6"

    sput-object v10, Lcom/example/playlink/MainActivity;->ip_adress:Ljava/lang/String;

    .line 77
    :cond_0
    iget-object v10, p0, Lcom/example/playlink/MainActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v11, "quality"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/example/playlink/MainActivity;->quality:Ljava/lang/String;

    sget-object v10, Lcom/example/playlink/MainActivity;->quality:Ljava/lang/String;

    const-string v11, ""

    if-ne v10, v11, :cond_1

    const-string v10, "1"

    sput-object v10, Lcom/example/playlink/MainActivity;->quality:Ljava/lang/String;

    .line 78
    :cond_1
    iget-object v10, p0, Lcom/example/playlink/MainActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v11, "auto_close"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/example/playlink/MainActivity;->auto_close:Ljava/lang/String;

    sget-object v10, Lcom/example/playlink/MainActivity;->auto_close:Ljava/lang/String;

    const-string v11, ""

    if-ne v10, v11, :cond_2

    const-string v10, "true"

    sput-object v10, Lcom/example/playlink/MainActivity;->auto_close:Ljava/lang/String;

    .line 79
    :cond_2
    iget-object v10, p0, Lcom/example/playlink/MainActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v11, "playlink_stop"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/example/playlink/MainActivity;->playlink_stop:Ljava/lang/String;

    sget-object v10, Lcom/example/playlink/MainActivity;->playlink_stop:Ljava/lang/String;

    const-string v11, ""

    if-ne v10, v11, :cond_3

    const-string v10, "true"

    sput-object v10, Lcom/example/playlink/MainActivity;->playlink_stop:Ljava/lang/String;

    .line 82
    :cond_3
    const v10, 0x7f090003

    invoke-virtual {p0, v10}, Lcom/example/playlink/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 86
    .local v8, "spinner":Landroid/widget/Spinner;
    const/high16 v10, 0x7f060000

    const v11, 0x1090008

    invoke-static {p0, v10, v11}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 87
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v10, 0x1090009

    invoke-virtual {v2, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 90
    invoke-virtual {v8, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 91
    invoke-virtual {v8, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/example/playlink/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 96
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "action":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 98
    .local v9, "type":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    .line 99
    .local v5, "category":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "scheme":Ljava/lang/String;
    const-string v10, "android.intent.action.SEND"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v9, :cond_4

    .line 102
    const-string v10, "text/plain"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 103
    invoke-virtual {p0, v6}, Lcom/example/playlink/MainActivity;->handleSendText(Landroid/content/Intent;)V

    .line 110
    :cond_4
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz v9, :cond_5

    .line 111
    const-string v10, "video/*"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 112
    invoke-virtual {p0, v6}, Lcom/example/playlink/MainActivity;->handleSendText(Landroid/content/Intent;)V

    .line 118
    :cond_5
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v5, :cond_6

    .line 119
    const-string v10, "http"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 120
    invoke-virtual {p0, v6}, Lcom/example/playlink/MainActivity;->handleSendText(Landroid/content/Intent;)V

    .line 127
    :cond_6
    const v10, 0x7f090005

    invoke-virtual {p0, v10}, Lcom/example/playlink/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    iput-object v10, p0, Lcom/example/playlink/MainActivity;->EditTextIP:Landroid/widget/EditText;

    .line 128
    const v10, 0x7f090005

    invoke-virtual {p0, v10}, Lcom/example/playlink/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/example/playlink/MainActivity;->ip_adress:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const v10, 0x7f090004

    invoke-virtual {p0, v10}, Lcom/example/playlink/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, p0, Lcom/example/playlink/MainActivity;->checkBox_playlink_stop:Landroid/widget/CheckBox;

    .line 132
    sget-object v10, Lcom/example/playlink/MainActivity;->playlink_stop:Ljava/lang/String;

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 133
    const v10, 0x7f090004

    invoke-virtual {p0, v10}, Lcom/example/playlink/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 138
    :goto_0
    sget-object v10, Lcom/example/playlink/MainActivity;->quality:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 146
    :cond_7
    :goto_1
    const v10, 0x7f090001

    invoke-virtual {p0, v10}, Lcom/example/playlink/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 148
    .local v0, "EditTextUrl":Landroid/widget/EditText;
    const v10, 0x7f090002

    invoke-virtual {p0, v10}, Lcom/example/playlink/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 149
    .local v3, "button1":Landroid/widget/Button;
    new-instance v10, Lcom/example/playlink/MainActivity$1;

    invoke-direct {v10, p0, v0}, Lcom/example/playlink/MainActivity$1;-><init>(Lcom/example/playlink/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v10, p0, Lcom/example/playlink/MainActivity;->EditTextIP:Landroid/widget/EditText;

    new-instance v11, Lcom/example/playlink/MainActivity$2;

    invoke-direct {v11, p0}, Lcom/example/playlink/MainActivity$2;-><init>(Lcom/example/playlink/MainActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 169
    const v10, 0x7f090006

    invoke-virtual {p0, v10}, Lcom/example/playlink/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 170
    .local v4, "buttonSave":Landroid/widget/Button;
    new-instance v10, Lcom/example/playlink/MainActivity$3;

    invoke-direct {v10, p0}, Lcom/example/playlink/MainActivity$3;-><init>(Lcom/example/playlink/MainActivity;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    return-void

    .line 134
    .end local v0    # "EditTextUrl":Landroid/widget/EditText;
    .end local v3    # "button1":Landroid/widget/Button;
    .end local v4    # "buttonSave":Landroid/widget/Button;
    :cond_8
    const v10, 0x7f090004

    invoke-virtual {p0, v10}, Lcom/example/playlink/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 138
    :pswitch_0
    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 139
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/Spinner;->setSelection(I)V

    const-string v10, "0"

    sput-object v10, Lcom/example/playlink/MainActivity;->spinner_Selection:Ljava/lang/String;

    goto :goto_1

    .line 138
    :pswitch_1
    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 140
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/widget/Spinner;->setSelection(I)V

    const-string v10, "1"

    sput-object v10, Lcom/example/playlink/MainActivity;->spinner_Selection:Ljava/lang/String;

    goto :goto_1

    .line 138
    :pswitch_2
    const-string v11, "2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 141
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Landroid/widget/Spinner;->setSelection(I)V

    const-string v10, "2"

    sput-object v10, Lcom/example/playlink/MainActivity;->spinner_Selection:Ljava/lang/String;

    goto :goto_1

    .line 138
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "itemSelected"    # Landroid/view/View;
    .param p3, "selectedItemPosition"    # I
    .param p4, "selectedId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/playlink/MainActivity;->spinner_Selection:Ljava/lang/String;

    .line 208
    sget-object v0, Lcom/example/playlink/MainActivity;->quality:Ljava/lang/String;

    sget-object v1, Lcom/example/playlink/MainActivity;->spinner_Selection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/example/playlink/MainActivity;->save_play()V

    .line 209
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTransver(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 287
    const/4 v2, 0x0

    .line 288
    .local v2, "url_command":Ljava/lang/String;
    const/4 v1, 0x0

    .line 289
    .local v1, "set_quality":Ljava/lang/String;
    const/4 v0, 0x0

    .line 293
    .local v0, "set_playlink_stop":Ljava/lang/String;
    sget-object v3, Lcom/example/playlink/MainActivity;->quality:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 299
    :cond_0
    :goto_0
    sget-object v3, Lcom/example/playlink/MainActivity;->playlink_stop:Ljava/lang/String;

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "0"

    .line 304
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/example/playlink/MainActivity;->ip_adress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cgi-bin/plugins/SendToDune/do?page=playlink_set&quality="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&stop="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 307
    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 312
    new-instance v3, Lcom/example/playlink/MainActivity$4;

    invoke-direct {v3, p0}, Lcom/example/playlink/MainActivity$4;-><init>(Lcom/example/playlink/MainActivity;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 329
    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/example/playlink/MainActivity$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 331
    return-void

    .line 293
    :pswitch_0
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    const-string v1, "hi"

    goto :goto_0

    .line 293
    :pswitch_1
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    const-string v1, "mid"

    goto :goto_0

    .line 293
    :pswitch_2
    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    const-string v1, "lo"

    goto :goto_0

    .line 301
    :cond_2
    sget-object v3, Lcom/example/playlink/MainActivity;->playlink_stop:Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "1"

    goto :goto_1

    .line 293
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public save_play()V
    .locals 3

    .prologue
    .line 260
    iget-object v1, p0, Lcom/example/playlink/MainActivity;->EditTextIP:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/example/playlink/MainActivity;->ip_adress:Ljava/lang/String;

    .line 261
    sget-object v1, Lcom/example/playlink/MainActivity;->spinner_Selection:Ljava/lang/String;

    sput-object v1, Lcom/example/playlink/MainActivity;->quality:Ljava/lang/String;

    .line 263
    const v1, 0x7f090004

    invoke-virtual {p0, v1}, Lcom/example/playlink/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/example/playlink/MainActivity;->checkBox_playlink_stop:Landroid/widget/CheckBox;

    .line 265
    iget-object v1, p0, Lcom/example/playlink/MainActivity;->checkBox_playlink_stop:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    const-string v1, "true"

    sput-object v1, Lcom/example/playlink/MainActivity;->playlink_stop:Ljava/lang/String;

    .line 272
    :goto_0
    const-string v1, "mysettings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/example/playlink/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/example/playlink/MainActivity;->mSettings:Landroid/content/SharedPreferences;

    .line 274
    iget-object v1, p0, Lcom/example/playlink/MainActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 276
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ip_adress"

    sget-object v2, Lcom/example/playlink/MainActivity;->ip_adress:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 277
    const-string v1, "quality"

    sget-object v2, Lcom/example/playlink/MainActivity;->quality:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 278
    const-string v1, "auto_close"

    sget-object v2, Lcom/example/playlink/MainActivity;->auto_close:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    const-string v1, "playlink_stop"

    sget-object v2, Lcom/example/playlink/MainActivity;->playlink_stop:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 280
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 282
    return-void

    .line 267
    .end local v0    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    const-string v1, "false"

    sput-object v1, Lcom/example/playlink/MainActivity;->playlink_stop:Ljava/lang/String;

    goto :goto_0
.end method
