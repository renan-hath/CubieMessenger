.class final Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;
.super Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;
.source "HelpSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EngineerEndPointReconnect"
.end annotation


# instance fields
.field private isReceiverRegistered:Z

.field final synthetic this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V
    .locals 2

    .prologue
    .line 221
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    .line 222
    const-string/jumbo v0, ""

    const-string/jumbo v1, "Click to manually disconnect"

    invoke-direct {p0, p1, v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->isReceiverRegistered:Z

    .line 223
    return-void
.end method

.method static synthetic access$2900(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->unregistConnectionStateBroadcastReceiver()V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->updateDisconnectPreference(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->registConnectionStateBroadcastReceiver()V

    return-void
.end method

.method private registConnectionStateBroadcastReceiver()V
    .locals 3

    .prologue
    .line 226
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->isReceiverRegistered:Z

    .line 227
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.android.service.CONNECTION_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    iget-object v2, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    # getter for: Lcom/liquable/nemo/setting/HelpSettingActivity;->receiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/liquable/nemo/setting/HelpSettingActivity;->access$000(Lcom/liquable/nemo/setting/HelpSettingActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/setting/HelpSettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    invoke-static {v1}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->requestCurrentConnectionState(Landroid/content/Context;)V

    .line 231
    return-void
.end method

.method private unregistConnectionStateBroadcastReceiver()V
    .locals 2

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->isReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    iget-object v1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    # getter for: Lcom/liquable/nemo/setting/HelpSettingActivity;->receiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/liquable/nemo/setting/HelpSettingActivity;->access$000(Lcom/liquable/nemo/setting/HelpSettingActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->isReceiverRegistered:Z

    .line 243
    :cond_0
    return-void
.end method

.method private updateDisconnectPreference(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 246
    const-string/jumbo v2, "com.liquable.nemo.android.service.CONNECTION_EVENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    const-string/jumbo v2, "com.liquable.nemo.android.service.KEY_SERVER_NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/client/ServerInfo;

    .line 248
    .local v1, "serverInfo":Lcom/liquable/nemo/client/ServerInfo;
    const-string/jumbo v2, "com.liquable.nemo.android.service.KEY_LAYER_TYPE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "layerType":Ljava/lang/String;
    if-nez v1, :cond_1

    const-string/jumbo v2, "connecting..."

    :goto_0
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->updateTitle(Ljava/lang/String;)V

    .line 253
    .end local v0    # "layerType":Ljava/lang/String;
    .end local v1    # "serverInfo":Lcom/liquable/nemo/client/ServerInfo;
    :cond_0
    return-void

    .line 249
    .restart local v0    # "layerType":Ljava/lang/String;
    .restart local v1    # "serverInfo":Lcom/liquable/nemo/client/ServerInfo;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    invoke-virtual {v1}, Lcom/liquable/nemo/client/ServerInfo;->shortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    invoke-static {v0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->tryDisconnect(Landroid/content/Context;)V

    .line 236
    return-void
.end method
