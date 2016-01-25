.class public Lcom/liquable/nemo/client/ServerInfo;
.super Ljava/lang/Object;
.source "ServerInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3988ce00ad61581bL


# instance fields
.field private final address:Ljava/lang/String;

.field private final port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/liquable/nemo/client/ServerInfo;->address:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/liquable/nemo/client/ServerInfo;->port:I

    .line 21
    return-void
.end method

.method public static parseShortString(Ljava/lang/String;)Lcom/liquable/nemo/client/ServerInfo;
    .locals 4
    .param p0, "addressColonPort"    # Ljava/lang/String;

    .prologue
    .line 8
    const-string/jumbo v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 9
    .local v0, "split":[Ljava/lang/String;
    new-instance v1, Lcom/liquable/nemo/client/ServerInfo;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/client/ServerInfo;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    if-ne p0, p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v1

    .line 28
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 29
    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 32
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 34
    check-cast v0, Lcom/liquable/nemo/client/ServerInfo;

    .line 35
    .local v0, "other":Lcom/liquable/nemo/client/ServerInfo;
    iget-object v3, p0, Lcom/liquable/nemo/client/ServerInfo;->address:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 36
    iget-object v3, v0, Lcom/liquable/nemo/client/ServerInfo;->address:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 37
    goto :goto_0

    .line 39
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/client/ServerInfo;->address:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/client/ServerInfo;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 40
    goto :goto_0

    .line 42
    :cond_5
    iget v3, p0, Lcom/liquable/nemo/client/ServerInfo;->port:I

    iget v4, v0, Lcom/liquable/nemo/client/ServerInfo;->port:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 43
    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/client/ServerInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/liquable/nemo/client/ServerInfo;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 58
    const/16 v0, 0x1f

    .line 59
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 60
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/client/ServerInfo;->address:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 61
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/client/ServerInfo;->port:I

    add-int v1, v2, v3

    .line 62
    return v1

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/client/ServerInfo;->address:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public shortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/liquable/nemo/client/ServerInfo;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/client/ServerInfo;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ServerInfo [address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/client/ServerInfo;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/client/ServerInfo;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
