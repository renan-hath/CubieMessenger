.class public Lcom/liquable/nemo/chat/ChattingActivityReceiver;
.super Ljava/lang/Object;
.source "ChattingActivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;
    }
.end annotation


# static fields
.field private static final debugLogger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private activeReceiver:Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;

.field private final chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    const-class v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p1, "chattingActivity"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 200
    return-void
.end method

.method static synthetic access$000()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method


# virtual methods
.method public processEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->activeReceiver:Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;

    if-nez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->activeReceiver:Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;

    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public registerActiveReceiver(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->activeReceiver:Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;

    if-eqz v1, :cond_0

    .line 225
    :goto_0
    return-void

    .line 213
    :cond_0
    new-instance v1, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {v1, v2}, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    iput-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->activeReceiver:Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;

    .line 214
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.chat.model.MESSAGE_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string/jumbo v1, "com.liquable.nemo.group.model.CHAT_GROUP_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string/jumbo v1, "com.liquable.nemo.chat.model.MEDIA_MESSAGE_TRANSFER_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v1, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v1, "com.liquable.nemo.chat.model.VOICE_MESSAGE_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v1, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string/jumbo v1, "com.liquable.nemo.util.urlimage.UrlFileTransferEvent.ACTION_NAME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string/jumbo v1, "com.liquable.nemo.storage.MediaMountEvent"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string/jumbo v1, "com.liquable.nemo.chat.model.STATUS_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->activeReceiver:Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public unregisterActiveAction(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->activeReceiver:Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->activeReceiver:Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->activeReceiver:Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;

    goto :goto_0
.end method
