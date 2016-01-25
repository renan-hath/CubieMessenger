.class final enum Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;
.super Ljava/lang/Enum;
.source "EpFrameLayerSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LiteSecureConnectRate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;

.field public static final enum INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;


# instance fields
.field private final liteSecureStartTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;

    sget-object v1, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->$VALUES:[Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->liteSecureStartTimes:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->isHighRate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->started()V

    return-void
.end method

.method private declared-synchronized isHighRate()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->liteSecureStartTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v4, 0x5

    if-ge v2, v4, :cond_0

    .line 43
    :goto_0
    monitor-exit p0

    return v3

    .line 41
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->liteSecureStartTimes:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->liteSecureStartTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v2, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->liteSecureStartTimes:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    sub-long v0, v4, v6

    .line 43
    .local v0, "delta":J
    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 37
    .end local v0    # "delta":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized reset()V
    .locals 1

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->liteSecureStartTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized started()V
    .locals 3

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->liteSecureStartTimes:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->liteSecureStartTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->liteSecureStartTimes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->$VALUES:[Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/layer/EpFrameLayerSelector$LiteSecureConnectRate;

    return-object v0
.end method
