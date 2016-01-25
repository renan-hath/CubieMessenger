.class final Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AbstractVoipSessionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VoipBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;-><init>(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    # getter for: Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->voipSession:Lcom/liquable/nemo/voip/session/VoipSession;
    invoke-static {v2}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->access$000(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)Lcom/liquable/nemo/voip/session/VoipSession;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    # getter for: Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->voipSession:Lcom/liquable/nemo/voip/session/VoipSession;
    invoke-static {v2}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->access$000(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)Lcom/liquable/nemo/voip/session/VoipSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/session/VoipSession;->canTalk()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    iget-object v2, v2, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver$1;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver$1;-><init>(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const-string/jumbo v2, "com.liquable.nemo.profile.ProfileEvent"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const-string/jumbo v2, "com.liquable.nemo.profile.KEY_COVER_RESULT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/friend/model/CoverResult;

    .line 83
    .local v1, "coverResult":Lcom/liquable/nemo/friend/model/CoverResult;
    if-eqz v1, :cond_0

    .line 87
    sget-object v3, Lcom/liquable/nemo/profile/ProfileEvent;->COVER_RESULT:Lcom/liquable/nemo/profile/ProfileEvent;

    const-string/jumbo v2, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/profile/ProfileEvent;

    if-ne v3, v2, :cond_0

    .line 88
    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/CoverResult;->getUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getPeer()Lcom/liquable/nemo/friend/model/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/CoverResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    new-instance v0, Lcom/liquable/nemo/profile/CoverImage;

    iget-object v2, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getPeer()Lcom/liquable/nemo/friend/model/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/liquable/nemo/profile/CoverImage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    .local v0, "coverImage":Lcom/liquable/nemo/profile/CoverImage;
    iget-object v2, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    # getter for: Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->coverView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->access$100(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/liquable/nemo/util/ImageLoader;->forceReloadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto :goto_0
.end method
