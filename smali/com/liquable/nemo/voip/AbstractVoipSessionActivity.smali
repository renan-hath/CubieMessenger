.class public abstract Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "AbstractVoipSessionActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/liquable/nemo/voip/session/VoipSessionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private coverView:Landroid/widget/ImageView;

.field private enableProximitySensor:Z

.field protected final handler:Landroid/os/Handler;

.field private imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private isTalking:Z

.field private proximity:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private speakerBtn:Landroid/view/View;

.field private stateTextView:Landroid/widget/TextView;

.field private talkingTimerTask:Ljava/lang/Runnable;

.field protected voipDebugView:Lcom/liquable/nemo/voip/VoipDebugView;

.field private voipQualityView:Lcom/liquable/nemo/voip/VoipQualityView;

.field private voipSession:Lcom/liquable/nemo/voip/session/VoipSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-class v0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 100
    iput-boolean v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->enableProximitySensor:Z

    .line 106
    iput-boolean v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->isTalking:Z

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)Lcom/liquable/nemo/voip/session/VoipSession;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->voipSession:Lcom/liquable/nemo/voip/session/VoipSession;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->coverView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->speakerBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getStateTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method private clearTalkTimer()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->talkingTimerTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->talkingTimerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    :cond_0
    return-void
.end method

.method private getStateTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->stateTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 209
    const v0, 0x7f0802ca

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->stateTextView:Landroid/widget/TextView;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->stateTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private toggleTalking(Lcom/liquable/nemo/friend/model/Account;)V
    .locals 4
    .param p1, "peer"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->isTalking:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getVoipSession()Lcom/liquable/nemo/voip/session/VoipSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->canTalk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->isTalking:Z

    .line 419
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->createBringToFrontIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/android/NotifyManager;->notifyVoip(Lcom/liquable/nemo/friend/model/Account;Landroid/content/Intent;)V

    .line 421
    invoke-direct {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->clearTalkTimer()V

    .line 423
    new-instance v0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$5;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$5;-><init>(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->talkingTimerTask:Ljava/lang/Runnable;

    .line 435
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->talkingTimerTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-boolean v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->isTalking:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getVoipSession()Lcom/liquable/nemo/voip/session/VoipSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->canTalk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->isTalking:Z

    .line 438
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/NotifyManager;->cancelVoipNotification()V

    .line 440
    invoke-direct {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->clearTalkTimer()V

    goto :goto_0
.end method


# virtual methods
.method protected final configureFriend()V
    .locals 10

    .prologue
    .line 131
    const v4, 0x7f0802c5

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->coverView:Landroid/widget/ImageView;

    .line 132
    const v4, 0x7f0802c9

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 133
    .local v2, "friendNickname":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getPeer()Lcom/liquable/nemo/friend/model/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const v4, 0x7f0802c6

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 137
    .local v1, "friendIcon":Landroid/widget/ImageView;
    const/4 v4, 0x4

    invoke-static {p0, v4}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v3

    .line 138
    .local v3, "paddingInPixel":I
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v4

    new-instance v5, Lcom/liquable/nemo/profile/RoundedProfileIcon;

    .line 139
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getPeer()Lcom/liquable/nemo/friend/model/Account;

    move-result-object v6

    invoke-static {v6}, Lcom/liquable/nemo/profile/ProfileIconFactory;->createIcon(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v6

    .line 140
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v7, v3

    .line 141
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v8, v3

    const v9, 0x7f020554

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/liquable/nemo/profile/RoundedProfileIcon;-><init>(Lcom/liquable/nemo/util/LoadableImage;III)V

    .line 138
    invoke-virtual {v4, v1, v5}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 144
    new-instance v0, Lcom/liquable/nemo/profile/CoverImage;

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getPeer()Lcom/liquable/nemo/friend/model/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/liquable/nemo/profile/CoverImage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    .local v0, "coverImage":Lcom/liquable/nemo/profile/CoverImage;
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->coverView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v0}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 148
    new-instance v4, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$1;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$1;-><init>(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 163
    return-void
.end method

.method protected final configureMute()V
    .locals 2

    .prologue
    .line 166
    const v1, 0x7f0802cb

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "muteBtn":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 168
    new-instance v1, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$2;-><init>(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-void
.end method

.method protected final configureSpeaker()V
    .locals 2

    .prologue
    .line 179
    const v0, 0x7f0802cc

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->speakerBtn:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->speakerBtn:Landroid/view/View;

    invoke-static {p0}, Lcom/liquable/nemo/voip/audio/VoipSounds;->isSpeakerMode(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 181
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->speakerBtn:Landroid/view/View;

    new-instance v1, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$3;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$3;-><init>(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void
.end method

.method protected final createBringToFrontIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v0, "bringToFront":Landroid/content/Intent;
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    return-object v0
.end method

.method protected final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method protected final getImageLoader()Lcom/liquable/nemo/util/ImageLoader;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    return-object v0
.end method

.method protected abstract getPeer()Lcom/liquable/nemo/friend/model/Account;
.end method

.method protected final getVoipSession()Lcom/liquable/nemo/voip/session/VoipSession;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->voipSession:Lcom/liquable/nemo/voip/session/VoipSession;

    return-object v0
.end method

.method protected final isWifiOn()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.wifi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 221
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 222
    .local v1, "mWifi":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    .end local v0    # "connManager":Landroid/net/ConnectivityManager;
    .end local v1    # "mWifi":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .restart local v0    # "connManager":Landroid/net/ConnectivityManager;
    .restart local v1    # "mWifi":Landroid/net/NetworkInfo;
    :cond_0
    move v2, v3

    .line 222
    goto :goto_0

    .end local v0    # "connManager":Landroid/net/ConnectivityManager;
    .end local v1    # "mWifi":Landroid/net/NetworkInfo;
    :cond_1
    move v2, v3

    .line 224
    goto :goto_0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 228
    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    .line 232
    iget-object v4, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_0

    .line 233
    iget-object v4, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 237
    :cond_0
    iget-object v4, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->voipSession:Lcom/liquable/nemo/voip/session/VoipSession;

    if-eqz v4, :cond_1

    .line 238
    iget-object v4, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->voipSession:Lcom/liquable/nemo/voip/session/VoipSession;

    invoke-virtual {v4}, Lcom/liquable/nemo/voip/session/VoipSession;->destroySync()V

    .line 243
    :cond_1
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v4}, Lcom/liquable/nemo/android/NotifyManager;->cancelVoipNotification()V

    .line 245
    invoke-direct {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->clearTalkTimer()V

    .line 247
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    .line 248
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 250
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 251
    .local v3, "lAttrs":Landroid/view/WindowManager$LayoutParams;
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 252
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 257
    iget-object v4, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->coverView:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 258
    iget-object v4, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->coverView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 259
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v4, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    move-object v1, v2

    .line 260
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 261
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 262
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 263
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 267
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onDestroy()V

    .line 268
    return-void
.end method

.method protected final onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    const v3, 0x7f0d0530

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 274
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 277
    :try_start_0
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0, p0}, Lcom/liquable/nemo/voip/session/VoipSession;->create(Ljava/lang/String;Lcom/liquable/nemo/voip/session/VoipSessionListener;Landroid/content/Context;)Lcom/liquable/nemo/voip/session/VoipSession;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->voipSession:Lcom/liquable/nemo/voip/session/VoipSession;
    :try_end_0
    .catch Lcom/liquable/nemo/opus/OpusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    const-string/jumbo v2, "sensor"

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 296
    iget-object v2, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->proximity:Landroid/hardware/Sensor;

    .line 298
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->onSessionCreate(Landroid/os/Bundle;)V

    .line 300
    const v2, 0x7f0802c8

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/voip/VoipQualityView;

    iput-object v2, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->voipQualityView:Lcom/liquable/nemo/voip/VoipQualityView;

    .line 303
    iget-object v2, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 304
    new-instance v2, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;-><init>(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$1;)V

    iput-object v2, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 306
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 307
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.liquable.nemo.profile.ProfileEvent"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 312
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Lcom/liquable/nemo/opus/OpusException;
    sget-object v2, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "Create Voip Session failed"

    invoke-virtual {v2, v3, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0526

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d03b3

    new-instance v4, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$4;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$4;-><init>(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)V

    .line 281
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 288
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 289
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 291
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onLoggedInResume()V
    .locals 3

    .prologue
    .line 316
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onLoggedInResume()V

    .line 317
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->proximity:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 320
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 327
    :cond_0
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onPause()V

    .line 328
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v6, 0x0

    .line 332
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v4, v6

    .line 333
    .local v1, "distance":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 335
    .local v0, "cm":F
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 337
    .local v2, "lAttrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020002

    .line 338
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 342
    .local v3, "topLevelView":Landroid/view/View;
    const v4, 0x38d1b717    # 1.0E-4f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 347
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, -0x401

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 348
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 349
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 350
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    .line 351
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 352
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-boolean v4, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->enableProximitySensor:Z

    if-eqz v4, :cond_0

    .line 362
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 363
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 367
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 368
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    .line 370
    const v4, 0x3dcccccd    # 0.1f

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 371
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public final onSessinoReport(Lcom/liquable/nemo/voip/session/VoipSessionReport;)V
    .locals 2
    .param p1, "report"    # Lcom/liquable/nemo/voip/session/VoipSessionReport;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->voipDebugView:Lcom/liquable/nemo/voip/VoipDebugView;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->voipDebugView:Lcom/liquable/nemo/voip/VoipDebugView;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/voip/VoipDebugView;->updateReport(Lcom/liquable/nemo/voip/session/VoipSessionReport;)V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->voipQualityView:Lcom/liquable/nemo/voip/VoipQualityView;

    invoke-virtual {p1}, Lcom/liquable/nemo/voip/session/VoipSessionReport;->getVoipQualityLevel()Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/VoipQualityView;->setQuality(Lcom/liquable/nemo/voip/session/VoipQualityLevel;)V

    .line 381
    return-void
.end method

.method public final onSessionClosed()V
    .locals 0

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->finish()V

    .line 386
    return-void
.end method

.method protected abstract onSessionCreate(Landroid/os/Bundle;)V
.end method

.method public final onSessionError(Ljava/lang/String;)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 394
    new-instance v0, Lcom/liquable/nemo/voip/VoipErrorDialogActivity$CreateIntent;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/voip/VoipErrorDialogActivity$CreateIntent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->startActivity(Landroid/content/Intent;)V

    .line 395
    return-void
.end method

.method public final onSessionPeerLost()V
    .locals 0

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->onVoipSessionPeerLost()V

    .line 400
    return-void
.end method

.method public final onSessionStateChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getPeer()Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->toggleTalking(Lcom/liquable/nemo/friend/model/Account;)V

    .line 405
    invoke-direct {p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getStateTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->voipSession:Lcom/liquable/nemo/voip/session/VoipSession;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->requireProximity()Z

    move-result v0

    iput-boolean v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->enableProximitySensor:Z

    .line 409
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->onVoipSessionStateChanged(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method protected onVoipSessionPeerLost()V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method protected abstract onVoipSessionStateChanged(Ljava/lang/String;)V
.end method
