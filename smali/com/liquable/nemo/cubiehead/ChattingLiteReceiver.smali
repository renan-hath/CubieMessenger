.class public Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;
.super Ljava/lang/Object;
.source "ChattingLiteReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;,
        Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$ForegroundReceiver;
    }
.end annotation


# instance fields
.field private final chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

.field private foregroundReceiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$ForegroundReceiver;

.field private fulltimeReceiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V
    .locals 0
    .param p1, "chattingLite"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    .line 165
    return-void
.end method


# virtual methods
.method public registerForegroundOnlyAction(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;->foregroundReceiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$ForegroundReceiver;

    if-eqz v1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v1, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$ForegroundReceiver;

    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-direct {v1, v2}, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$ForegroundReceiver;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    iput-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;->foregroundReceiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$ForegroundReceiver;

    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.chat.model.VOICE_MESSAGE_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v1, "com.liquable.nemo.android.service.CONNECTION_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;->foregroundReceiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$ForegroundReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public registerFulltimeAction(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;->fulltimeReceiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;

    if-eqz v1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 182
    :cond_0
    new-instance v1, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;

    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-direct {v1, v2}, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    iput-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;->fulltimeReceiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 184
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.chat.model.MESSAGE_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string/jumbo v1, "com.liquable.nemo.group.model.CHAT_GROUP_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string/jumbo v1, "com.liquable.nemo.chat.model.MEDIA_MESSAGE_TRANSFER_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string/jumbo v1, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string/jumbo v1, "com.liquable.nemo.util.urlimage.UrlFileTransferEvent.ACTION_NAME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string/jumbo v1, "com.liquable.nemo.chat.model.STATUS_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;->fulltimeReceiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public unregisterForegroundOnlyAction(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;->foregroundReceiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$ForegroundReceiver;

    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;->foregroundReceiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$ForegroundReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;->foregroundReceiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$ForegroundReceiver;

    goto :goto_0
.end method

.method public unregisterFulltimeAction(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;->fulltimeReceiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;->fulltimeReceiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;->fulltimeReceiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;

    goto :goto_0
.end method
