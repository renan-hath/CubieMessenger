.class public Lcom/liquable/nemo/model/account/FacebookConnectionDto;
.super Ljava/lang/Object;
.source "FacebookConnectionDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1dee02ca62b8e423L


# instance fields
.field private final birthday:Ljava/lang/String;

.field private final fbuid:Ljava/lang/String;

.field private final gender:Ljava/lang/String;

.field private final locale:Ljava/lang/String;

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fbuid"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "gender"    # Ljava/lang/String;
    .param p4, "birthday"    # Ljava/lang/String;
    .param p5, "locale"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->fbuid:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->uid:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->gender:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->birthday:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->locale:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    if-ne p0, p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v1

    .line 34
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 38
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 40
    check-cast v0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;

    .line 41
    .local v0, "other":Lcom/liquable/nemo/model/account/FacebookConnectionDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->fbuid:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 42
    iget-object v3, v0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->fbuid:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 43
    goto :goto_0

    .line 45
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->fbuid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->fbuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 46
    goto :goto_0

    .line 48
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->uid:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 49
    iget-object v3, v0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->uid:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 50
    goto :goto_0

    .line 52
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->uid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 53
    goto :goto_0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getFbuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->fbuid:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 80
    const/16 v0, 0x1f

    .line 81
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 82
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->fbuid:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 83
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->uid:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 84
    return v1

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->fbuid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 83
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->uid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FacebookConnectionDto [fbuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->fbuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", birthday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/FacebookConnectionDto;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
