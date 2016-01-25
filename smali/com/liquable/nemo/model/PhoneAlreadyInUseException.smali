.class public final Lcom/liquable/nemo/model/PhoneAlreadyInUseException;
.super Lcom/liquable/nemo/model/DomainException;
.source "PhoneAlreadyInUseException.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x776d13c41dc8b773L


# instance fields
.field private final nickname:Ljava/lang/String;

.field private final phone:Ljava/lang/String;

.field private final uid:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "phone"
        .end annotation
    .end param
    .param p2, "uid"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "uid"
        .end annotation
    .end param
    .param p3, "username"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "username"
        .end annotation
    .end param
    .param p4, "nickname"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "nickname"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/liquable/nemo/model/DomainException;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->phone:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->uid:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->username:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->nickname:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    if-ne p0, p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 36
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 40
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 42
    check-cast v0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;

    .line 43
    .local v0, "other":Lcom/liquable/nemo/model/PhoneAlreadyInUseException;
    iget-object v3, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->nickname:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 44
    iget-object v3, v0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->nickname:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 45
    goto :goto_0

    .line 47
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->nickname:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 48
    goto :goto_0

    .line 50
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->phone:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 51
    iget-object v3, v0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->phone:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 52
    goto :goto_0

    .line 54
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->phone:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->phone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 55
    goto :goto_0

    .line 57
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->uid:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 58
    iget-object v3, v0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->uid:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 59
    goto :goto_0

    .line 61
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->uid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 62
    goto :goto_0

    .line 64
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->username:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 65
    iget-object v3, v0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->username:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 66
    goto :goto_0

    .line 68
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->username:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 69
    goto :goto_0
.end method

.method public getI18nKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string/jumbo v0, "phone_already_in_use"

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 101
    const/16 v0, 0x1f

    .line 102
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 103
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->nickname:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 104
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->phone:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 105
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->uid:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 106
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->username:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 107
    return v1

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->nickname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->uid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 106
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PhoneAlreadyInUseException [phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
