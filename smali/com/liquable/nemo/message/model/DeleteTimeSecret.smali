.class public final Lcom/liquable/nemo/message/model/DeleteTimeSecret;
.super Ljava/lang/Object;
.source "DeleteTimeSecret.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final BUFFER_DURATION:J = 0x1388L

.field private static final SEALED_TIME:J = 0x0L

.field private static final serialVersionUID:J = -0x476ff02f949cee5bL


# instance fields
.field private deleteTime:J

.field private final expireDuration:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "deleteTime"    # J
    .param p3, "expireDuration"    # J

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->deleteTime:J

    .line 35
    iput-wide p3, p0, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->expireDuration:J

    .line 36
    return-void
.end method

.method private calcState()Lcom/liquable/nemo/message/model/ISecret$State;
    .locals 8

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->getDeleteTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 40
    sget-object v2, Lcom/liquable/nemo/message/model/ISecret$State;->SEALED:Lcom/liquable/nemo/message/model/ISecret$State;

    .line 49
    :goto_0
    return-object v2

    .line 43
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 45
    .local v0, "currentTimeMillis":J
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->getDeleteTime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->getDeleteTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v4, p0, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->expireDuration:J

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 46
    :cond_1
    sget-object v2, Lcom/liquable/nemo/message/model/ISecret$State;->EXPIRED:Lcom/liquable/nemo/message/model/ISecret$State;

    goto :goto_0

    .line 49
    :cond_2
    sget-object v2, Lcom/liquable/nemo/message/model/ISecret$State;->OPENED:Lcom/liquable/nemo/message/model/ISecret$State;

    goto :goto_0
.end method

.method public static create(J)Lcom/liquable/nemo/message/model/DeleteTimeSecret;
    .locals 3
    .param p0, "expireDuration"    # J

    .prologue
    .line 21
    new-instance v0, Lcom/liquable/nemo/message/model/DeleteTimeSecret;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/liquable/nemo/message/model/DeleteTimeSecret;-><init>(JJ)V

    return-object v0
.end method

.method private setDeleteTime(J)V
    .locals 0
    .param p1, "deleteTime"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->deleteTime:J

    .line 99
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    if-ne p0, p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 57
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 58
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 61
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/liquable/nemo/message/model/DeleteTimeSecret;

    .line 64
    .local v0, "other":Lcom/liquable/nemo/message/model/DeleteTimeSecret;
    iget-wide v3, p0, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->deleteTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->deleteTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 65
    goto :goto_0

    .line 67
    :cond_4
    iget-wide v3, p0, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->expireDuration:J

    iget-wide v5, v0, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->expireDuration:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    .line 68
    goto :goto_0
.end method

.method public getDeleteTime()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->deleteTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    .line 79
    const/16 v0, 0x1f

    .line 80
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 81
    .local v1, "result":I
    iget-wide v2, p0, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->deleteTime:J

    iget-wide v4, p0, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->deleteTime:J

    ushr-long/2addr v4, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 82
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->expireDuration:J

    iget-wide v5, p0, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->expireDuration:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 83
    return v1
.end method

.method public isState(Lcom/liquable/nemo/message/model/ISecret$State;)Z
    .locals 1
    .param p1, "state"    # Lcom/liquable/nemo/message/model/ISecret$State;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->calcState()Lcom/liquable/nemo/message/model/ISecret$State;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open()V
    .locals 4

    .prologue
    .line 91
    sget-object v0, Lcom/liquable/nemo/message/model/ISecret$State;->SEALED:Lcom/liquable/nemo/message/model/ISecret$State;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->isState(Lcom/liquable/nemo/message/model/ISecret$State;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->expireDuration:J

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->setDeleteTime(J)V

    goto :goto_0
.end method

.method public timeToExpireInMilli()J
    .locals 4

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->getDeleteTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DeleteTimeSecret [deleteTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->deleteTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", expireDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->expireDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
