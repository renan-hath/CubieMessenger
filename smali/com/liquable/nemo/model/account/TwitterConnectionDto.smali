.class public Lcom/liquable/nemo/model/account/TwitterConnectionDto;
.super Ljava/lang/Object;
.source "TwitterConnectionDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# static fields
.field private static final serialVersionUID:J = -0x1e793c695d130a17L


# instance fields
.field private final lang:Ljava/lang/String;

.field private final twitterId:J

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "twitterId"    # J
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "lang"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->twitterId:J

    .line 18
    iput-object p3, p0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->uid:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->lang:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    if-ne p0, p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v1

    .line 27
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 31
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 33
    check-cast v0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;

    .line 34
    .local v0, "other":Lcom/liquable/nemo/model/account/TwitterConnectionDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->lang:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 35
    iget-object v3, v0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->lang:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 36
    goto :goto_0

    .line 38
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->lang:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->lang:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 39
    goto :goto_0

    .line 41
    :cond_5
    iget-wide v3, p0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->twitterId:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->twitterId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    .line 42
    goto :goto_0

    .line 44
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->uid:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 45
    iget-object v3, v0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->uid:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 46
    goto :goto_0

    .line 48
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->uid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 49
    goto :goto_0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterId()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->twitterId:J

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 68
    const/16 v0, 0x1f

    .line 69
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 70
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->lang:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 71
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->twitterId:J

    iget-wide v6, p0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->twitterId:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 72
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->uid:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 73
    return v1

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->lang:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 72
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->uid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TwitterConnectionDto [twitterId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->twitterId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/TwitterConnectionDto;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
