.class Lcom/liquable/nemo/chat/model/ChattingManager$OfflineBatchCalculator;
.super Ljava/lang/Object;
.source "ChattingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/model/ChattingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OfflineBatchCalculator"
.end annotation


# static fields
.field private static final BURST_COUNT:I = 0xc8

.field private static final DEFAULT_COUNT:I = 0x32


# instance fields
.field private asyncException:Z

.field private batchCount:I

.field private startTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/16 v0, 0x32

    iput v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$OfflineBatchCalculator;->batchCount:I

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$OfflineBatchCalculator;->asyncException:Z

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$OfflineBatchCalculator;->startTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/chat/model/ChattingManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/chat/model/ChattingManager$1;

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/liquable/nemo/chat/model/ChattingManager$OfflineBatchCalculator;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 7

    .prologue
    const/16 v2, 0x32

    .line 153
    iget-boolean v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager$OfflineBatchCalculator;->asyncException:Z

    if-eqz v3, :cond_0

    .line 155
    iput v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$OfflineBatchCalculator;->batchCount:I

    .line 163
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/liquable/nemo/chat/model/ChattingManager$OfflineBatchCalculator;->startTime:J

    sub-long v0, v3, v5

    .line 162
    .local v0, "duration":J
    const-wide/16 v3, 0xfa0

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    const/16 v2, 0xc8

    :cond_1
    iput v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$OfflineBatchCalculator;->batchCount:I

    goto :goto_0
.end method

.method public getBatchCount()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$OfflineBatchCalculator;->batchCount:I

    return v0
.end method

.method public onAsyncException()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$OfflineBatchCalculator;->asyncException:Z

    .line 171
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$OfflineBatchCalculator;->startTime:J

    .line 175
    return-void
.end method
