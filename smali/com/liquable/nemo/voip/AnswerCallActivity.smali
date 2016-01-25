.class public Lcom/liquable/nemo/voip/AnswerCallActivity;
.super Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;
.source "AnswerCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/AnswerCallActivity$CreateIntent;
    }
.end annotation


# static fields
.field private static final WAKE_LOCK_TIMEOUT:I = 0x1d4c0

.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private answerBtn:Landroid/view/View;

.field private dialer:Lcom/liquable/nemo/friend/model/Account;

.field private hangupBtn:Landroid/view/View;

.field private quitBtn:Landroid/view/View;

.field private rejectBtn:Landroid/view/View;

.field private final releaseLockTask:Ljava/lang/Runnable;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/liquable/nemo/voip/AnswerCallActivity;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/voip/AnswerCallActivity;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;-><init>()V

    .line 69
    new-instance v0, Lcom/liquable/nemo/voip/AnswerCallActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/voip/AnswerCallActivity$1;-><init>(Lcom/liquable/nemo/voip/AnswerCallActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->releaseLockTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/voip/AnswerCallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/AnswerCallActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->releaseLock()V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/voip/AnswerCallActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/AnswerCallActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->answerBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/voip/AnswerCallActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/AnswerCallActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->rejectBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/voip/AnswerCallActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/AnswerCallActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->hangupBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/voip/AnswerCallActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/AnswerCallActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->quitBtn:Landroid/view/View;

    return-object v0
.end method

.method private acquireLock()V
    .locals 7

    .prologue
    const/high16 v6, 0x680000

    .line 79
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/AnswerCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 80
    .local v1, "pm":Landroid/os/PowerManager;
    const/16 v2, 0x1a

    const-class v3, Lcom/liquable/nemo/voip/AnswerCallActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 84
    iget-object v2, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 85
    iget-object v2, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->releaseLockTask:Ljava/lang/Runnable;

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    const/high16 v0, 0x680000

    .line 93
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 95
    return-void
.end method

.method private findDailerFriend(Lcom/liquable/nemo/voip/session/AnswerCall;)Lcom/liquable/nemo/friend/model/Account;
    .locals 3
    .param p1, "answerCall"    # Lcom/liquable/nemo/voip/session/AnswerCall;

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 100
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/voip/session/AnswerCall;->getDialerUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 101
    .local v0, "dialer":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isFriend()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    .end local v0    # "dialer":Lcom/liquable/nemo/friend/model/Account;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshAllStates()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 235
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->answerBtn:Landroid/view/View;

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->getVoipSession()Lcom/liquable/nemo/voip/session/VoipSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/voip/session/VoipSession;->canAcceptOrReject()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->rejectBtn:Landroid/view/View;

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->getVoipSession()Lcom/liquable/nemo/voip/session/VoipSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/voip/session/VoipSession;->canAcceptOrReject()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->hangupBtn:Landroid/view/View;

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->getVoipSession()Lcom/liquable/nemo/voip/session/VoipSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/voip/session/VoipSession;->canTalk()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->getVoipSession()Lcom/liquable/nemo/voip/session/VoipSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->canTalk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->hangupBtn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->rejectBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->answerBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :cond_0
    return-void
.end method

.method private releaseLock()V
    .locals 4

    .prologue
    .line 247
    iget-object v1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    .line 250
    iget-object v1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 259
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 261
    :cond_1
    return-void

    .line 253
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/liquable/nemo/voip/AnswerCallActivity;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignore known wake lock bug in Android 2.x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getPeer()Lcom/liquable/nemo/friend/model/Account;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->dialer:Lcom/liquable/nemo/friend/model/Account;

    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->releaseLockTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    invoke-direct {p0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->releaseLock()V

    .line 118
    invoke-super {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->onDestroy()V

    .line 119
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method protected onSessionCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    .line 130
    const v1, 0x7f03001c

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/voip/AnswerCallActivity;->setContentView(I)V

    .line 132
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/voip/AnswerCallActivity$CreateIntent;->getAnswerCall(Landroid/content/Intent;)Lcom/liquable/nemo/voip/session/AnswerCall;

    move-result-object v0

    .line 133
    .local v0, "answerCall":Lcom/liquable/nemo/voip/session/AnswerCall;
    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->findDailerFriend(Lcom/liquable/nemo/voip/session/AnswerCall;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->dialer:Lcom/liquable/nemo/friend/model/Account;

    .line 134
    iget-object v1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->dialer:Lcom/liquable/nemo/friend/model/Account;

    if-nez v1, :cond_0

    .line 135
    sget-object v1, Lcom/liquable/nemo/voip/AnswerCallActivity;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "dialer not found or is not friend, quit"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->finish()V

    .line 202
    :goto_0
    return-void

    .line 140
    :cond_0
    const v1, 0x7f08005e

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/voip/AnswerCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->answerBtn:Landroid/view/View;

    .line 141
    const v1, 0x7f08005c

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/voip/AnswerCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->rejectBtn:Landroid/view/View;

    .line 142
    const v1, 0x7f08005b

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/voip/AnswerCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->hangupBtn:Landroid/view/View;

    .line 143
    const v1, 0x7f08005d

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/voip/AnswerCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->quitBtn:Landroid/view/View;

    .line 145
    iget-object v1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->hangupBtn:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->quitBtn:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->answerBtn:Landroid/view/View;

    new-instance v2, Lcom/liquable/nemo/voip/AnswerCallActivity$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/voip/AnswerCallActivity$2;-><init>(Lcom/liquable/nemo/voip/AnswerCallActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->rejectBtn:Landroid/view/View;

    new-instance v2, Lcom/liquable/nemo/voip/AnswerCallActivity$3;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/voip/AnswerCallActivity$3;-><init>(Lcom/liquable/nemo/voip/AnswerCallActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->hangupBtn:Landroid/view/View;

    new-instance v2, Lcom/liquable/nemo/voip/AnswerCallActivity$4;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/voip/AnswerCallActivity$4;-><init>(Lcom/liquable/nemo/voip/AnswerCallActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->quitBtn:Landroid/view/View;

    new-instance v2, Lcom/liquable/nemo/voip/AnswerCallActivity$5;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/voip/AnswerCallActivity$5;-><init>(Lcom/liquable/nemo/voip/AnswerCallActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->configureFriend()V

    .line 195
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->configureSpeaker()V

    .line 196
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->configureMute()V

    .line 198
    invoke-direct {p0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->acquireLock()V

    .line 200
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->getVoipSession()Lcom/liquable/nemo/voip/session/VoipSession;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/voip/session/VoipSession;->receive(Lcom/liquable/nemo/voip/session/AnswerCall;)V

    .line 201
    invoke-direct {p0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->refreshAllStates()V

    goto :goto_0
.end method

.method protected onVoipSessionPeerLost()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 206
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->quitBtn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->hangupBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->rejectBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->answerBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/voip/AnswerCallActivity$6;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/voip/AnswerCallActivity$6;-><init>(Lcom/liquable/nemo/voip/AnswerCallActivity;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    :cond_0
    return-void
.end method

.method protected onVoipSessionStateChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->refreshAllStates()V

    .line 232
    return-void
.end method
