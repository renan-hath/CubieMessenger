.class public Lcom/liquable/nemo/model/sticker/FortumoProductName;
.super Ljava/lang/Object;
.source "FortumoProductName.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2883dc366155b499L


# instance fields
.field private final androidFortumoPurchaseId:J

.field private final revision:J

.field private final stickerItemFortumoNameSuffix:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "androidFortumoPurchaseId"    # J
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "revision"    # J
    .param p6, "stickerItemFortumoNameSuffix"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->androidFortumoPurchaseId:J

    .line 34
    iput-object p3, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->username:Ljava/lang/String;

    .line 35
    iput-wide p4, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->revision:J

    .line 36
    iput-object p6, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->stickerItemFortumoNameSuffix:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static decode(Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/FortumoProductName;
    .locals 8
    .param p0, "raw"    # Ljava/lang/String;

    .prologue
    .line 11
    const-string/jumbo v0, "-"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 13
    .local v7, "split":[Ljava/lang/String;
    new-instance v0, Lcom/liquable/nemo/model/sticker/FortumoProductName;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x1

    aget-object v3, v7, v3

    const/4 v4, 0x2

    aget-object v4, v7, v4

    .line 15
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x3

    aget-object v6, v7, v6

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/model/sticker/FortumoProductName;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->androidFortumoPurchaseId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->revision:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->stickerItemFortumoNameSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    if-ne p0, p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 57
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 59
    check-cast v0, Lcom/liquable/nemo/model/sticker/FortumoProductName;

    .line 60
    .local v0, "other":Lcom/liquable/nemo/model/sticker/FortumoProductName;
    iget-wide v3, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->androidFortumoPurchaseId:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->androidFortumoPurchaseId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 61
    goto :goto_0

    .line 63
    :cond_4
    iget-wide v3, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->revision:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->revision:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    .line 64
    goto :goto_0

    .line 66
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->stickerItemFortumoNameSuffix:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 67
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->stickerItemFortumoNameSuffix:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 68
    goto :goto_0

    .line 70
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->stickerItemFortumoNameSuffix:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->stickerItemFortumoNameSuffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 71
    goto :goto_0

    .line 73
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->username:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 74
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->username:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 75
    goto :goto_0

    .line 77
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->username:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 78
    goto :goto_0
.end method

.method public getAndroidFortumoPurchaseId()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->androidFortumoPurchaseId:J

    return-wide v0
.end method

.method public getRevision()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->revision:J

    return-wide v0
.end method

.method public getStickerItemFortumoProductSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->stickerItemFortumoNameSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x0

    .line 101
    const/16 v0, 0x1f

    .line 102
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 103
    .local v1, "result":I
    iget-wide v4, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->androidFortumoPurchaseId:J

    iget-wide v6, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->androidFortumoPurchaseId:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/lit8 v1, v2, 0x1f

    .line 104
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->revision:J

    iget-wide v6, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->revision:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 105
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->stickerItemFortumoNameSuffix:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    .line 106
    :goto_0
    add-int v1, v4, v2

    .line 107
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->username:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 108
    return v1

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->stickerItemFortumoNameSuffix:Ljava/lang/String;

    .line 106
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 107
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FortumoProductName [androidFortumoPurchaseId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->androidFortumoPurchaseId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", revision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->revision:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", stickerItemFortumoNameSuffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/FortumoProductName;->stickerItemFortumoNameSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
