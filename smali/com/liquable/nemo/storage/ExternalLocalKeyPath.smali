.class public Lcom/liquable/nemo/storage/ExternalLocalKeyPath;
.super Lcom/liquable/nemo/storage/LocalKeyPath;
.source "ExternalLocalKeyPath.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyPath"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/liquable/nemo/storage/LocalKeyPath;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static createTempLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/ExternalLocalKeyPath;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 11
    new-instance v0, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cubie/temp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public replaceBaseName(Ljava/lang/String;)Lcom/liquable/nemo/storage/ExternalLocalKeyPath;
    .locals 6
    .param p1, "newBaseName"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;->getKeyPath()Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "keyPath":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "ext":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->getFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "fullPath":Ljava/lang/String;
    new-instance v3, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

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

    invoke-direct {v3, v4}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method public bridge synthetic replaceBaseName(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;->replaceBaseName(Ljava/lang/String;)Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;
    .locals 1
    .param p1, "nemoFileService"    # Lcom/liquable/nemo/storage/NemoFileService;

    .prologue
    .line 30
    invoke-virtual {p1, p0}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Lcom/liquable/nemo/storage/ExternalLocalKeyPath;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
