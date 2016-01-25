.class public Lcom/liquable/nemo/storage/InternalLocalKeyPath;
.super Lcom/liquable/nemo/storage/LocalKeyPath;
.source "InternalLocalKeyPath.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyPath"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/liquable/nemo/storage/LocalKeyPath;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public replaceBaseName(Ljava/lang/String;)Lcom/liquable/nemo/storage/InternalLocalKeyPath;
    .locals 6
    .param p1, "newBaseName"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/liquable/nemo/storage/InternalLocalKeyPath;->getKeyPath()Ljava/lang/String;

    move-result-object v2

    .line 16
    .local v2, "keyPath":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "ext":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->getFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, "fullPath":Ljava/lang/String;
    new-instance v3, Lcom/liquable/nemo/storage/InternalLocalKeyPath;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/liquable/nemo/storage/InternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method public bridge synthetic replaceBaseName(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/storage/InternalLocalKeyPath;->replaceBaseName(Ljava/lang/String;)Lcom/liquable/nemo/storage/InternalLocalKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;
    .locals 1
    .param p1, "nemoFileService"    # Lcom/liquable/nemo/storage/NemoFileService;

    .prologue
    .line 23
    invoke-virtual {p1, p0}, Lcom/liquable/nemo/storage/NemoFileService;->getInternalKeyPathFile(Lcom/liquable/nemo/storage/InternalLocalKeyPath;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
