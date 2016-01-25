.class Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;
.super Ljava/lang/Object;
.source "DiagnosisActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Round"
.end annotation


# instance fields
.field private end:Z

.field private started:Z

.field final synthetic this$1:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    iput-object p1, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->this$1:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->started:Z

    .line 63
    iput-boolean v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->end:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;Lcom/liquable/nemo/setting/DiagnosisActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;
    .param p2, "x1"    # Lcom/liquable/nemo/setting/DiagnosisActivity$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;-><init>(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;)V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;Lcom/liquable/nemo/client/ServerInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;
    .param p1, "x1"    # Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;
    .param p2, "x2"    # Lcom/liquable/nemo/client/ServerInfo;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->onConnectionState(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;Lcom/liquable/nemo/client/ServerInfo;Ljava/lang/String;)V

    return-void
.end method

.method private onConnectionState(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;Lcom/liquable/nemo/client/ServerInfo;Ljava/lang/String;)V
    .locals 6
    .param p1, "connectionState"    # Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;
    .param p2, "serverInfo"    # Lcom/liquable/nemo/client/ServerInfo;
    .param p3, "layer"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 69
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy/MM/dd hh:mm:ss.SSS"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "date":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - Layer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\t- State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\t- Server info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "report":Ljava/lang/String;
    # getter for: Lcom/liquable/nemo/setting/DiagnosisActivity;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/setting/DiagnosisActivity;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "end point diagnosis state - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->this$1:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;

    # getter for: Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->reports:Ljava/util/List;
    invoke-static {v2}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->access$100(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v2, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->SCHEDULE_RECONNECT:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    if-ne v2, p1, :cond_2

    .line 83
    iget-boolean v2, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->started:Z

    if-eqz v2, :cond_1

    .line 84
    iput-boolean v5, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->end:Z

    .line 85
    iget-object v2, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->this$1:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;

    # getter for: Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->reports:Ljava/util/List;
    invoke-static {v2}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->access$100(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "Round Abort because SCHEDULE_RECONNECT twice =================="

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v2, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->this$1:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;

    # invokes: Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->onRoundStopped(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;)V
    invoke-static {v2, p0}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->access$200(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-boolean v2, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->started:Z

    if-nez v2, :cond_2

    .line 90
    iput-boolean v5, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->started:Z

    .line 94
    :cond_2
    sget-object v2, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->LOGINED:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    if-ne v2, p1, :cond_0

    .line 95
    iget-boolean v2, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->started:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->end:Z

    if-nez v2, :cond_0

    .line 96
    iput-boolean v5, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->end:Z

    .line 97
    iget-object v2, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->this$1:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;

    # getter for: Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->reports:Ljava/util/List;
    invoke-static {v2}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->access$100(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "Round End =================="

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v2, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->this$1:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;

    # invokes: Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->onRoundStopped(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;)V
    invoke-static {v2, p0}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->access$200(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;)V

    goto :goto_0
.end method


# virtual methods
.method public start(Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;)V
    .locals 2
    .param p1, "selectRule"    # Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;

    .prologue
    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->started:Z

    .line 105
    iput-boolean v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->end:Z

    .line 106
    sget-object v0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->setSelectRule(Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;)V

    .line 107
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->this$1:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;

    iget-object v0, v0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->this$0:Lcom/liquable/nemo/setting/DiagnosisActivity;

    invoke-static {v0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->tryDisconnect(Landroid/content/Context;)V

    .line 108
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis$Round;->this$1:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;

    # getter for: Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->reports:Ljava/util/List;
    invoke-static {v0}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->access$100(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "Round Start =================="

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method
