.class public Lcom/liquable/nemo/sdk/DisconnectActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "DisconnectActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/liquable/nemo/sdk/DisconnectActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/sdk/DisconnectActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/sdk/DisconnectActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/sdk/DisconnectActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/liquable/nemo/sdk/DisconnectActivity;->finishWithError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/liquable/nemo/sdk/DisconnectActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private disconnect(Lcom/liquable/nemo/sdk/model/DisconnectParameters;)V
    .locals 3
    .param p1, "disconnectParameters"    # Lcom/liquable/nemo/sdk/model/DisconnectParameters;

    .prologue
    .line 25
    sget-object v0, Lcom/liquable/nemo/sdk/DisconnectActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disconnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v0, Lcom/liquable/nemo/sdk/DisconnectActivity$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/liquable/nemo/sdk/DisconnectActivity$1;-><init>(Lcom/liquable/nemo/sdk/DisconnectActivity;Landroid/content/Context;Lcom/liquable/nemo/sdk/model/DisconnectParameters;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 68
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sdk/DisconnectActivity$1;->execute([Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method private extractDisconnectParametersFromIntent()Lcom/liquable/nemo/sdk/model/DisconnectParameters;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/liquable/nemo/sdk/DisconnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 73
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 74
    const-string/jumbo v4, "no intent"

    invoke-direct {p0, v4}, Lcom/liquable/nemo/sdk/DisconnectActivity;->finishWithError(Ljava/lang/String;)V

    move-object v0, v3

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.cubie.openapi.sdk.disconnect"

    invoke-static {v4, v5}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 79
    const-string/jumbo v4, "action not matched"

    invoke-direct {p0, v4}, Lcom/liquable/nemo/sdk/DisconnectActivity;->finishWithError(Ljava/lang/String;)V

    move-object v0, v3

    .line 80
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 84
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_3

    .line 85
    const-string/jumbo v4, "no intent extras"

    invoke-direct {p0, v4}, Lcom/liquable/nemo/sdk/DisconnectActivity;->finishWithError(Ljava/lang/String;)V

    move-object v0, v3

    .line 86
    goto :goto_0

    .line 89
    :cond_3
    invoke-static {v1}, Lcom/liquable/nemo/sdk/model/DisconnectParameters;->fromBundle(Landroid/os/Bundle;)Lcom/liquable/nemo/sdk/model/DisconnectParameters;

    move-result-object v0

    .line 90
    .local v0, "disconnectParameters":Lcom/liquable/nemo/sdk/model/DisconnectParameters;
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/liquable/nemo/sdk/model/DisconnectParameters;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    const-string/jumbo v4, "uid not matched"

    invoke-direct {p0, v4}, Lcom/liquable/nemo/sdk/DisconnectActivity;->finishWithError(Ljava/lang/String;)V

    move-object v0, v3

    .line 92
    goto :goto_0
.end method

.method private finishWithError(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 98
    sget-object v0, Lcom/liquable/nemo/sdk/DisconnectActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finishWithError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0d01c3

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/sdk/DisconnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/liquable/nemo/sdk/DisconnectActivity;->finish()V

    .line 101
    return-void
.end method


# virtual methods
.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/liquable/nemo/sdk/DisconnectActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/liquable/nemo/sdk/DisconnectActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 107
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sdk/DisconnectActivity;->setContentView(I)V

    .line 108
    invoke-direct {p0}, Lcom/liquable/nemo/sdk/DisconnectActivity;->extractDisconnectParametersFromIntent()Lcom/liquable/nemo/sdk/model/DisconnectParameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/sdk/DisconnectActivity;->disconnect(Lcom/liquable/nemo/sdk/model/DisconnectParameters;)V

    .line 109
    return-void
.end method
