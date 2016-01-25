.class public final Lcom/liquable/util/ExponentialBackoff;
.super Ljava/lang/Object;
.source "ExponentialBackoff.java"


# instance fields
.field private final backoffTime:J

.field private final counter:I

.field private final maxCounter:I

.field private final unitTimeInMilli:J


# direct methods
.method private constructor <init>(IJIJ)V
    .locals 0
    .param p1, "counter"    # I
    .param p2, "unitTimeInMilli"    # J
    .param p4, "maxCounter"    # I
    .param p5, "backoffTime"    # J

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/liquable/util/ExponentialBackoff;->counter:I

    .line 45
    iput-wide p2, p0, Lcom/liquable/util/ExponentialBackoff;->unitTimeInMilli:J

    .line 46
    iput p4, p0, Lcom/liquable/util/ExponentialBackoff;->maxCounter:I

    .line 47
    iput-wide p5, p0, Lcom/liquable/util/ExponentialBackoff;->backoffTime:J

    .line 48
    return-void
.end method

.method public static create(JI)Lcom/liquable/util/ExponentialBackoff;
    .locals 7
    .param p0, "unitTimeInMilli"    # J
    .param p2, "maxCounter"    # I

    .prologue
    .line 29
    new-instance v0, Lcom/liquable/util/ExponentialBackoff;

    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    move-wide v2, p0

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/liquable/util/ExponentialBackoff;-><init>(IJIJ)V

    return-object v0
.end method


# virtual methods
.method public decrease(J)Lcom/liquable/util/ExponentialBackoff;
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 51
    iget v0, p0, Lcom/liquable/util/ExponentialBackoff;->counter:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 52
    new-instance v0, Lcom/liquable/util/ExponentialBackoff;

    iget v1, p0, Lcom/liquable/util/ExponentialBackoff;->counter:I

    add-int/lit8 v1, v1, -0x1

    iget-wide v2, p0, Lcom/liquable/util/ExponentialBackoff;->unitTimeInMilli:J

    iget v4, p0, Lcom/liquable/util/ExponentialBackoff;->maxCounter:I

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/liquable/util/ExponentialBackoff;-><init>(IJIJ)V

    .line 54
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/liquable/util/ExponentialBackoff;->reset()Lcom/liquable/util/ExponentialBackoff;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    if-ne p0, p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 66
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 68
    check-cast v0, Lcom/liquable/util/ExponentialBackoff;

    .line 69
    .local v0, "other":Lcom/liquable/util/ExponentialBackoff;
    iget v3, p0, Lcom/liquable/util/ExponentialBackoff;->counter:I

    iget v4, v0, Lcom/liquable/util/ExponentialBackoff;->counter:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 70
    goto :goto_0

    .line 72
    :cond_4
    iget-wide v3, p0, Lcom/liquable/util/ExponentialBackoff;->backoffTime:J

    iget-wide v5, v0, Lcom/liquable/util/ExponentialBackoff;->backoffTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    .line 73
    goto :goto_0

    .line 75
    :cond_5
    iget v3, p0, Lcom/liquable/util/ExponentialBackoff;->maxCounter:I

    iget v4, v0, Lcom/liquable/util/ExponentialBackoff;->maxCounter:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 76
    goto :goto_0

    .line 78
    :cond_6
    iget-wide v3, p0, Lcom/liquable/util/ExponentialBackoff;->unitTimeInMilli:J

    iget-wide v5, v0, Lcom/liquable/util/ExponentialBackoff;->unitTimeInMilli:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    .line 79
    goto :goto_0
.end method

.method getExpectedBackoff()J
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 85
    iget v0, p0, Lcom/liquable/util/ExponentialBackoff;->counter:I

    int-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    div-double/2addr v0, v4

    iget-wide v2, p0, Lcom/liquable/util/ExponentialBackoff;->unitTimeInMilli:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    .line 90
    const/16 v0, 0x1f

    .line 91
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 92
    .local v1, "result":I
    iget v2, p0, Lcom/liquable/util/ExponentialBackoff;->counter:I

    add-int/lit8 v1, v2, 0x1f

    .line 93
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/liquable/util/ExponentialBackoff;->backoffTime:J

    iget-wide v5, p0, Lcom/liquable/util/ExponentialBackoff;->backoffTime:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 94
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/util/ExponentialBackoff;->maxCounter:I

    add-int v1, v2, v3

    .line 95
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/liquable/util/ExponentialBackoff;->unitTimeInMilli:J

    iget-wide v5, p0, Lcom/liquable/util/ExponentialBackoff;->unitTimeInMilli:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 96
    return v1
.end method

.method public increase(J)Lcom/liquable/util/ExponentialBackoff;
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 100
    new-instance v0, Lcom/liquable/util/ExponentialBackoff;

    iget v1, p0, Lcom/liquable/util/ExponentialBackoff;->counter:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/liquable/util/ExponentialBackoff;->maxCounter:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-wide v2, p0, Lcom/liquable/util/ExponentialBackoff;->unitTimeInMilli:J

    iget v4, p0, Lcom/liquable/util/ExponentialBackoff;->maxCounter:I

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/liquable/util/ExponentialBackoff;-><init>(IJIJ)V

    return-object v0
.end method

.method public increaseToMax(J)Lcom/liquable/util/ExponentialBackoff;
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 107
    new-instance v0, Lcom/liquable/util/ExponentialBackoff;

    iget v1, p0, Lcom/liquable/util/ExponentialBackoff;->maxCounter:I

    iget-wide v2, p0, Lcom/liquable/util/ExponentialBackoff;->unitTimeInMilli:J

    iget v4, p0, Lcom/liquable/util/ExponentialBackoff;->maxCounter:I

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/liquable/util/ExponentialBackoff;-><init>(IJIJ)V

    return-object v0
.end method

.method public isMax()Z
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/liquable/util/ExponentialBackoff;->counter:I

    iget v1, p0, Lcom/liquable/util/ExponentialBackoff;->maxCounter:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPass(J)Z
    .locals 5
    .param p1, "now"    # J

    .prologue
    const/4 v0, 0x1

    .line 115
    iget v1, p0, Lcom/liquable/util/ExponentialBackoff;->counter:I

    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/liquable/util/ExponentialBackoff;->getExpectedBackoff()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/liquable/util/ExponentialBackoff;->backoffTime:J

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()Lcom/liquable/util/ExponentialBackoff;
    .locals 7

    .prologue
    .line 122
    iget v0, p0, Lcom/liquable/util/ExponentialBackoff;->counter:I

    if-nez v0, :cond_0

    .line 125
    .end local p0    # "this":Lcom/liquable/util/ExponentialBackoff;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/liquable/util/ExponentialBackoff;
    :cond_0
    new-instance v0, Lcom/liquable/util/ExponentialBackoff;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/liquable/util/ExponentialBackoff;->unitTimeInMilli:J

    iget v4, p0, Lcom/liquable/util/ExponentialBackoff;->maxCounter:I

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/liquable/util/ExponentialBackoff;-><init>(IJIJ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ExponentialBackoff [counter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/util/ExponentialBackoff;->counter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", unitTimeInMilli="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/util/ExponentialBackoff;->unitTimeInMilli:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maxCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/util/ExponentialBackoff;->maxCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", increaseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/util/ExponentialBackoff;->backoffTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
