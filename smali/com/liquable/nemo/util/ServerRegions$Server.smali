.class public Lcom/liquable/nemo/util/ServerRegions$Server;
.super Ljava/lang/Object;
.source "ServerRegions.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/ServerRegions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Server"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x48ea39c76e99b4ceL


# instance fields
.field private final host:Ljava/lang/String;

.field private final port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "host"
        .end annotation
    .end param
    .param p2, "port"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "port"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/liquable/nemo/util/ServerRegions$Server;->host:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/liquable/nemo/util/ServerRegions$Server;->port:I

    .line 54
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/liquable/nemo/util/ServerRegions$Server;
    .locals 4
    .param p0, "addressColonPort"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string/jumbo v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "split":[Ljava/lang/String;
    new-instance v1, Lcom/liquable/nemo/util/ServerRegions$Server;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/util/ServerRegions$Server;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    if-ne p0, p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 61
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 62
    goto :goto_0

    .line 64
    :cond_2
    instance-of v3, p1, Lcom/liquable/nemo/util/ServerRegions$Server;

    if-nez v3, :cond_3

    move v1, v2

    .line 65
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 67
    check-cast v0, Lcom/liquable/nemo/util/ServerRegions$Server;

    .line 68
    .local v0, "other":Lcom/liquable/nemo/util/ServerRegions$Server;
    iget-object v3, p0, Lcom/liquable/nemo/util/ServerRegions$Server;->host:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 69
    iget-object v3, v0, Lcom/liquable/nemo/util/ServerRegions$Server;->host:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 70
    goto :goto_0

    .line 72
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/util/ServerRegions$Server;->host:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/util/ServerRegions$Server;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 73
    goto :goto_0

    .line 75
    :cond_5
    iget v3, p0, Lcom/liquable/nemo/util/ServerRegions$Server;->port:I

    iget v4, v0, Lcom/liquable/nemo/util/ServerRegions$Server;->port:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 76
    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/liquable/nemo/util/ServerRegions$Server;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 88
    iget v0, p0, Lcom/liquable/nemo/util/ServerRegions$Server;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 93
    const/16 v0, 0x1f

    .line 94
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 95
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/util/ServerRegions$Server;->host:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 96
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/util/ServerRegions$Server;->port:I

    add-int v1, v2, v3

    .line 97
    return v1

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/util/ServerRegions$Server;->host:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/liquable/nemo/util/ServerRegions$Server;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/util/ServerRegions$Server;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
