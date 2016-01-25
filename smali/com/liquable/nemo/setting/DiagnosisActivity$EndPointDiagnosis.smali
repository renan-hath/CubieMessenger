.class final Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;
.super Ljava/lang/Object;
.source "DiagnosisActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/DiagnosisActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EndPointDiagnosis"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;
    }
.end annotation


# instance fields
.field private firstRound:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;

.field private volatile isReceiverRegistered:Z

.field private onDone:Ljava/lang/Runnable;

.field private final reports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private secondRound:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;

.field final synthetic this$0:Lcom/liquable/nemo/setting/DiagnosisActivity;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/setting/DiagnosisActivity;)V
    .locals 1

    .prologue
    .line 120
    iput-object p1, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->this$0:Lcom/liquable/nemo/setting/DiagnosisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->isReceiverRegistered:Z

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->reports:Ljava/util/List;

    .line 120
    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->reports:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;
    .param p1, "x1"    # Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->onRoundStopped(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;)V

    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->onConnectionStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->getReport()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getReport()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->reports:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    .local v0, "report":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 128
    .end local v0    # "report":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private onConnectionStateChanged(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 132
    const-string/jumbo v3, "com.liquable.nemo.android.service.CONNECTION_EVENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    const-string/jumbo v3, "com.liquable.nemo.android.service.KEY_SERVER_NAME"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/client/ServerInfo;

    .line 134
    .local v2, "serverInfo":Lcom/liquable/nemo/client/ServerInfo;
    const-string/jumbo v3, "com.liquable.nemo.android.service.KEY_CONNECT_STATE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    .line 135
    .local v0, "connectionState":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;
    const-string/jumbo v3, "com.liquable.nemo.android.service.KEY_LAYER_TYPE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "layerType":Ljava/lang/String;
    sget-object v3, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->WAITING_NETWORK_STATE:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    if-ne v3, v0, :cond_1

    .line 138
    iget-object v3, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->reports:Ljava/util/List;

    const-string/jumbo v4, "Abort because WAITING_NETWORK_STATE <<<<<<<<<<<<"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-direct {p0}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->stop()V

    .line 151
    .end local v0    # "connectionState":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;
    .end local v1    # "layerType":Ljava/lang/String;
    .end local v2    # "serverInfo":Lcom/liquable/nemo/client/ServerInfo;
    :cond_0
    :goto_0
    return-void

    .line 143
    .restart local v0    # "connectionState":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;
    .restart local v1    # "layerType":Ljava/lang/String;
    .restart local v2    # "serverInfo":Lcom/liquable/nemo/client/ServerInfo;
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->firstRound:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;

    if-eqz v3, :cond_2

    .line 144
    iget-object v3, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->firstRound:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;

    # invokes: Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->onConnectionState(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;Lcom/liquable/nemo/client/ServerInfo;Ljava/lang/String;)V
    invoke-static {v3, v0, v2, v1}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->access$300(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;Lcom/liquable/nemo/client/ServerInfo;Ljava/lang/String;)V

    .line 147
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->secondRound:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;

    if-eqz v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->secondRound:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;

    # invokes: Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->onConnectionState(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;Lcom/liquable/nemo/client/ServerInfo;Ljava/lang/String;)V
    invoke-static {v3, v0, v2, v1}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->access$300(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;Lcom/liquable/nemo/client/ServerInfo;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRoundStopped(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;)V
    .locals 2
    .param p1, "round"    # Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->firstRound:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;

    if-ne v0, p1, :cond_0

    .line 155
    iput-object v1, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->firstRound:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;

    .line 156
    new-instance v0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;-><init>(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;Lcom/liquable/nemo/setting/DiagnosisActivity$1;)V

    iput-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->secondRound:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;

    .line 157
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->secondRound:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;

    sget-object v1, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;->ALWAYS_LITE_SECURE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->start(Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->secondRound:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;

    if-ne v0, p1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->reports:Ljava/util/List;

    const-string/jumbo v1, "End <<<<<<<<<<<<"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-direct {p0}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->stop()V

    .line 164
    :cond_1
    return-void
.end method

.method private registConnectionStateBroadcastReceiver()V
    .locals 3

    .prologue
    .line 167
    iget-boolean v1, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->isReceiverRegistered:Z

    if-eqz v1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->isReceiverRegistered:Z

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.android.service.CONNECTION_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->this$0:Lcom/liquable/nemo/setting/DiagnosisActivity;

    iget-object v2, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->this$0:Lcom/liquable/nemo/setting/DiagnosisActivity;

    # getter for: Lcom/liquable/nemo/setting/DiagnosisActivity;->receiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/liquable/nemo/setting/DiagnosisActivity;->access$500(Lcom/liquable/nemo/setting/DiagnosisActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/setting/DiagnosisActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    iget-boolean v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->isReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->this$0:Lcom/liquable/nemo/setting/DiagnosisActivity;

    iget-object v1, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->this$0:Lcom/liquable/nemo/setting/DiagnosisActivity;

    # getter for: Lcom/liquable/nemo/setting/DiagnosisActivity;->receiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/liquable/nemo/setting/DiagnosisActivity;->access$500(Lcom/liquable/nemo/setting/DiagnosisActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/DiagnosisActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->isReceiverRegistered:Z

    .line 193
    :cond_0
    sget-object v0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    sget-object v1, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;->DEFAULT:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->setSelectRule(Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;)V

    .line 194
    iput-object v2, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->firstRound:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;

    .line 195
    iput-object v2, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->secondRound:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;

    .line 196
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->onDone:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->onDone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 198
    iput-object v2, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->onDone:Ljava/lang/Runnable;

    .line 200
    :cond_1
    return-void
.end method


# virtual methods
.method public start(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "onDone"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    .line 177
    iput-object p1, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->onDone:Ljava/lang/Runnable;

    .line 178
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->reports:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 179
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->reports:Ljava/util/List;

    const-string/jumbo v1, "\nStart >>>>>>>>>>>"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->this$0:Lcom/liquable/nemo/setting/DiagnosisActivity;

    # getter for: Lcom/liquable/nemo/setting/DiagnosisActivity;->endPointDiagnosis:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;
    invoke-static {v0}, Lcom/liquable/nemo/setting/DiagnosisActivity;->access$600(Lcom/liquable/nemo/setting/DiagnosisActivity;)Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;

    move-result-object v0

    invoke-direct {v0}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->registConnectionStateBroadcastReceiver()V

    .line 181
    iput-object v2, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->secondRound:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;

    .line 182
    new-instance v0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;

    invoke-direct {v0, p0, v2}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;-><init>(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;Lcom/liquable/nemo/setting/DiagnosisActivity$1;)V

    iput-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->firstRound:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;

    .line 183
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->firstRound:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;

    sget-object v1, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;->ALWAYS_SSL:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->start(Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;)V

    .line 185
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->this$0:Lcom/liquable/nemo/setting/DiagnosisActivity;

    invoke-static {v0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->requestCurrentConnectionState(Landroid/content/Context;)V

    .line 186
    return-void
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->onDone:Ljava/lang/Runnable;

    .line 204
    invoke-direct {p0}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->stop()V

    .line 205
    return-void
.end method
