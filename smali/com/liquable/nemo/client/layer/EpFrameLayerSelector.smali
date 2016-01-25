.class public final enum Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;
.super Ljava/lang/Enum;
.source "EpFrameLayerSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;,
        Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

.field public static final enum INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

.field private static final MAX_BAD_SCORE:I = 0x5


# instance fields
.field private volatile badScore:J

.field private final logger:Lcom/liquable/nemo/util/Logger;

.field private volatile selectRule:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    sget-object v1, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->$VALUES:[Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    const-class v0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->logger:Lcom/liquable/nemo/util/Logger;

    .line 82
    sget-object v0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;->DEFAULT:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;

    iput-object v0, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->selectRule:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->$VALUES:[Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    return-object v0
.end method


# virtual methods
.method public hintError(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->badScore:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->badScore:J

    .line 86
    return-void
.end method

.method public hintFatalError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 89
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->badScore:J

    .line 90
    sget-object v0, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "lite secure layer hint fatal error"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hintSuccess()V
    .locals 2

    .prologue
    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->badScore:J

    .line 99
    return-void
.end method

.method public hintWarning(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->badScore:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->badScore:J

    .line 103
    return-void
.end method

.method public select(Lcom/liquable/nemo/util/Pref;Ljava/lang/String;Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;)Lcom/liquable/nemo/client/layer/EpFrameLayer;
    .locals 6
    .param p1, "pref"    # Lcom/liquable/nemo/util/Pref;
    .param p2, "uniqueDeviceId"    # Ljava/lang/String;
    .param p3, "frameMapper"    # Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;

    .prologue
    .line 109
    iget-object v2, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->selectRule:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;

    sget-object v3, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;->ALWAYS_SSL:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;

    if-ne v2, v3, :cond_0

    .line 110
    new-instance v2, Lcom/liquable/nemo/client/layer/SslStringLayer;

    invoke-direct {v2, p3}, Lcom/liquable/nemo/client/layer/SslStringLayer;-><init>(Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;)V

    .line 155
    :goto_0
    return-object v2

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->selectRule:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;

    sget-object v3, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;->ALWAYS_LITE_SECURE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;

    if-ne v2, v3, :cond_1

    .line 112
    new-instance v2, Lcom/liquable/nemo/client/layer/LiteSecureLayer;

    invoke-direct {v2, p1, p2, p3}, Lcom/liquable/nemo/client/layer/LiteSecureLayer;-><init>(Lcom/liquable/nemo/util/Pref;Ljava/lang/String;Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    :cond_2
    new-instance v2, Lcom/liquable/nemo/client/layer/SslStringLayer;

    invoke-direct {v2, p3}, Lcom/liquable/nemo/client/layer/SslStringLayer;-><init>(Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;)V

    goto :goto_0

    .line 119
    :cond_3
    iget-wide v2, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->badScore:J

    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 120
    iget-object v2, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "lite secure layer exceed min badScore, fallback to SSL"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 121
    new-instance v2, Lcom/liquable/nemo/client/layer/SslStringLayer;

    invoke-direct {v2, p3}, Lcom/liquable/nemo/client/layer/SslStringLayer;-><init>(Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;)V

    goto :goto_0

    .line 130
    :cond_4
    invoke-virtual {p1}, Lcom/liquable/nemo/util/Pref;->findLiteSecureProtocolIncompatibleVersion()Lcom/liquable/nemo/NemoVersion;

    move-result-object v1

    .line 132
    .local v1, "found":Lcom/liquable/nemo/NemoVersion;
    if-eqz v1, :cond_5

    sget-object v2, Lcom/liquable/nemo/Constants;->CURRENT_VERSION:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/NemoVersion;->isNewer(Lcom/liquable/nemo/NemoVersion;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 133
    new-instance v2, Lcom/liquable/nemo/client/layer/SslStringLayer;

    invoke-direct {v2, p3}, Lcom/liquable/nemo/client/layer/SslStringLayer;-><init>(Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;)V

    goto :goto_0

    .line 136
    :cond_5
    sget-object v2, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;

    # invokes: Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->isHighRate()Z
    invoke-static {v2}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->access$000(Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 137
    sget-object v2, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;

    # invokes: Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->reset()V
    invoke-static {v2}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->access$100(Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;)V

    .line 138
    iget-object v2, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "lite secure connect too much in short time, give ssl layer a chance."

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 139
    new-instance v2, Lcom/liquable/nemo/client/layer/SslStringLayer;

    invoke-direct {v2, p3}, Lcom/liquable/nemo/client/layer/SslStringLayer;-><init>(Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;)V

    goto :goto_0

    .line 143
    :cond_6
    :try_start_0
    sget-object v2, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;

    # invokes: Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->started()V
    invoke-static {v2}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->access$200(Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;)V

    .line 144
    new-instance v2, Lcom/liquable/nemo/client/layer/LiteSecureLayer;

    invoke-direct {v2, p1, p2, p3}, Lcom/liquable/nemo/client/layer/LiteSecureLayer;-><init>(Lcom/liquable/nemo/util/Pref;Ljava/lang/String;Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "construct lite secure layer failed, fall back to ssl"

    invoke-virtual {v2, v3, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    sget-object v2, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v2}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 153
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 155
    :cond_7
    new-instance v2, Lcom/liquable/nemo/client/layer/SslStringLayer;

    invoke-direct {v2, p3}, Lcom/liquable/nemo/client/layer/SslStringLayer;-><init>(Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;)V

    goto/16 :goto_0
.end method

.method public setSelectRule(Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;)V
    .locals 0
    .param p1, "selectRule"    # Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->selectRule:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$SelectRule;

    .line 162
    return-void
.end method

.method public setVersionIncompatible(Lcom/liquable/nemo/util/Pref;)V
    .locals 1
    .param p1, "pref"    # Lcom/liquable/nemo/util/Pref;

    .prologue
    .line 165
    sget-object v0, Lcom/liquable/nemo/Constants;->CURRENT_VERSION:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/util/Pref;->setLiteSecureProtocolIncompatibleVersion(Lcom/liquable/nemo/NemoVersion;)V

    .line 166
    return-void
.end method
