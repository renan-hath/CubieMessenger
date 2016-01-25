.class public abstract Lcom/liquable/nemo/storage/LocalKeyPath;
.super Ljava/lang/Object;
.source "LocalKeyPath.java"


# instance fields
.field private final keyPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyPath"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/liquable/nemo/storage/LocalKeyPath;->keyPath:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 16
    if-ne p0, p1, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v1

    .line 19
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 20
    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 23
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 25
    check-cast v0, Lcom/liquable/nemo/storage/LocalKeyPath;

    .line 26
    .local v0, "other":Lcom/liquable/nemo/storage/LocalKeyPath;
    iget-object v3, p0, Lcom/liquable/nemo/storage/LocalKeyPath;->keyPath:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 27
    iget-object v3, v0, Lcom/liquable/nemo/storage/LocalKeyPath;->keyPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 28
    goto :goto_0

    .line 30
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/storage/LocalKeyPath;->keyPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/storage/LocalKeyPath;->keyPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 31
    goto :goto_0
.end method

.method public getBaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/storage/LocalKeyPath;->keyPath:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/storage/LocalKeyPath;->keyPath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 46
    const/16 v0, 0x1f

    .line 47
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 48
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/storage/LocalKeyPath;->keyPath:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 49
    return v1

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/storage/LocalKeyPath;->keyPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public abstract replaceBaseName(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;
.end method

.method public abstract toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;
.end method
