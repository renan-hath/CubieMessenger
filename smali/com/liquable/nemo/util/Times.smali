.class public final Lcom/liquable/nemo/util/Times;
.super Ljava/lang/Object;
.source "Times.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static randomMiddle(J)J
    .locals 12
    .param p0, "value"    # J

    .prologue
    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    .line 14
    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-ltz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    const-string/jumbo v7, "random middle only allow >=0"

    invoke-static {v6, v7}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 15
    long-to-double v6, p0

    div-double v4, v6, v10

    .line 16
    .local v4, "min":D
    long-to-double v6, p0

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v8

    div-double v2, v6, v10

    .line 17
    .local v2, "max":D
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    sub-double v8, v2, v4

    mul-double v0, v6, v8

    .line 18
    .local v0, "delta":D
    add-double v6, v4, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    return-wide v6

    .line 14
    .end local v0    # "delta":D
    .end local v2    # "max":D
    .end local v4    # "min":D
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method
