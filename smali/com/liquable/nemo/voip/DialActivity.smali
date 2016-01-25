.class public Lcom/liquable/nemo/voip/DialActivity;
.super Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;
.source "DialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/DialActivity$CreateIntent;
    }
.end annotation


# static fields
.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private closeBtn:Landroid/view/View;

.field private hangupBtn:Landroid/view/View;

.field private receiver:Lcom/liquable/nemo/friend/model/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/liquable/nemo/voip/DialActivity;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/voip/DialActivity;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;-><init>()V

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/voip/DialActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/DialActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/liquable/nemo/voip/DialActivity;->hangupBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/voip/DialActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/DialActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/liquable/nemo/voip/DialActivity;->closeBtn:Landroid/view/View;

    return-object v0
.end method

.method private refreshAllStates()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/DialActivity;->getVoipSession()Lcom/liquable/nemo/voip/session/VoipSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->canTalk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/liquable/nemo/voip/DialActivity;->hangupBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/liquable/nemo/voip/DialActivity;->hangupBtn:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/liquable/nemo/voip/DialActivity;->closeBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/voip/DialActivity;->hangupBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/liquable/nemo/voip/DialActivity;->hangupBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/liquable/nemo/voip/DialActivity;->closeBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getPeer()Lcom/liquable/nemo/friend/model/Account;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/voip/DialActivity;->receiver:Lcom/liquable/nemo/friend/model/Account;

    return-object v0
.end method

.method protected onSessionCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    const v1, 0x7f030028

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/voip/DialActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/DialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/voip/DialActivity$CreateIntent;->getReceiver(Landroid/content/Intent;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/voip/DialActivity;->receiver:Lcom/liquable/nemo/friend/model/Account;

    .line 58
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/DialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/voip/DialActivity$CreateIntent;->getFrom(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "from":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/voip/DialActivity;->receiver:Lcom/liquable/nemo/friend/model/Account;

    if-nez v1, :cond_0

    .line 61
    sget-object v1, Lcom/liquable/nemo/voip/DialActivity;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "receiver not found, quit"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/DialActivity;->finish()V

    .line 97
    :goto_0
    return-void

    .line 66
    :cond_0
    const v1, 0x7f08005b

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/voip/DialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/voip/DialActivity;->hangupBtn:Landroid/view/View;

    .line 67
    const v1, 0x7f0800a9

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/voip/DialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/voip/DialActivity;->closeBtn:Landroid/view/View;

    .line 69
    iget-object v1, p0, Lcom/liquable/nemo/voip/DialActivity;->hangupBtn:Landroid/view/View;

    new-instance v2, Lcom/liquable/nemo/voip/DialActivity$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/voip/DialActivity$1;-><init>(Lcom/liquable/nemo/voip/DialActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v1, p0, Lcom/liquable/nemo/voip/DialActivity;->closeBtn:Landroid/view/View;

    new-instance v2, Lcom/liquable/nemo/voip/DialActivity$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/voip/DialActivity$2;-><init>(Lcom/liquable/nemo/voip/DialActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/DialActivity;->configureFriend()V

    .line 89
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/DialActivity;->configureSpeaker()V

    .line 90
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/DialActivity;->configureMute()V

    .line 92
    invoke-direct {p0}, Lcom/liquable/nemo/voip/DialActivity;->refreshAllStates()V

    .line 94
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/DialActivity;->isWifiOn()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->voipDial(Ljava/lang/String;Z)V

    .line 96
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/DialActivity;->getVoipSession()Lcom/liquable/nemo/voip/session/VoipSession;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/voip/DialActivity;->receiver:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v3}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/voip/session/VoipSession;->dial(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onVoipSessionStateChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/liquable/nemo/voip/DialActivity;->refreshAllStates()V

    .line 102
    return-void
.end method
