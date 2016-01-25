.class public Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;
.super Ljava/lang/Object;
.source "OpenApiAccountDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5a4e5e70098f73f0L


# instance fields
.field private final email:Ljava/lang/String;

.field private final openApiAccountId:Ljava/lang/String;

.field private final permissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final validated:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;)V
    .locals 0
    .param p1, "openApiAccountId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "openApiAccountId"
        .end annotation
    .end param
    .param p2, "email"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "email"
        .end annotation
    .end param
    .param p3, "validated"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "validated"
        .end annotation
    .end param
    .param p4    # Ljava/util/Set;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "permissions"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 31
    .local p4, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->openApiAccountId:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->email:Ljava/lang/String;

    .line 34
    iput-boolean p3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->validated:Z

    .line 35
    iput-object p4, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->permissions:Ljava/util/Set;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    if-ne p0, p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 43
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 44
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 47
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 49
    check-cast v0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;

    .line 50
    .local v0, "other":Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->email:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 51
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->email:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 52
    goto :goto_0

    .line 54
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->email:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 55
    goto :goto_0

    .line 57
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->openApiAccountId:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 58
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->openApiAccountId:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 59
    goto :goto_0

    .line 61
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->openApiAccountId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->openApiAccountId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 62
    goto :goto_0

    .line 64
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->permissions:Ljava/util/Set;

    if-nez v3, :cond_8

    .line 65
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->permissions:Ljava/util/Set;

    if-eqz v3, :cond_9

    move v1, v2

    .line 66
    goto :goto_0

    .line 68
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->permissions:Ljava/util/Set;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->permissions:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_9
    iget-boolean v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->validated:Z

    iget-boolean v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->validated:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 72
    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenApiAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->openApiAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->permissions:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 91
    const/16 v0, 0x1f

    .line 92
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 93
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->email:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 94
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->openApiAccountId:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 95
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->permissions:Ljava/util/Set;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 96
    mul-int/lit8 v3, v1, 0x1f

    iget-boolean v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->validated:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x4cf

    :goto_3
    add-int v1, v3, v2

    .line 97
    return v1

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->openApiAccountId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 95
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->permissions:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->hashCode()I

    move-result v3

    goto :goto_2

    .line 96
    :cond_3
    const/16 v2, 0x4d5

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OpenApiAccountDto [openApiAccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->openApiAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", validated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->validated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", permissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAccountDto;->permissions:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
