.class Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$ForegroundReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChattingLiteReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForegroundReceiver"
.end annotation


# instance fields
.field final chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V
    .locals 0
    .param p1, "chattingLite"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$ForegroundReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    .line 32
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    const-string/jumbo v3, "com.liquable.nemo.chat.model.VOICE_MESSAGE_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    const-string/jumbo v3, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/model/VoiceMessageEvent;

    .line 38
    .local v0, "event":Lcom/liquable/nemo/chat/model/VoiceMessageEvent;
    sget-object v3, Lcom/liquable/nemo/chat/model/VoiceMessageEvent;->PLAY:Lcom/liquable/nemo/chat/model/VoiceMessageEvent;

    if-ne v3, v0, :cond_0

    .line 39
    const-string/jumbo v3, "com.liquable.nemo.chat.model.KEY_MESSAGE_ID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "messageId":Ljava/lang/String;
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$ForegroundReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v3, v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->playVoiceMessage(Ljava/lang/String;)V

    .line 46
    .end local v0    # "event":Lcom/liquable/nemo/chat/model/VoiceMessageEvent;
    .end local v1    # "messageId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string/jumbo v3, "com.liquable.nemo.android.service.CONNECTION_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    const-string/jumbo v3, "com.liquable.nemo.android.service.KEY_CONNECT_STATE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    .line 44
    .local v2, "state":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$ForegroundReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/cubiehead/ChattingLite;->updateConnectionState(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;)V

    goto :goto_0
.end method
