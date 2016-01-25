.class public Lcom/amazonaws/services/s3/internal/Mimetypes;
.super Ljava/lang/Object;
.source "Mimetypes.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;

.field private static mimetypes:Lcom/amazonaws/services/s3/internal/Mimetypes;


# instance fields
.field private extensionToMimetypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/amazonaws/services/s3/internal/Mimetypes;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/amazonaws/services/s3/internal/Mimetypes;->mimetypes:Lcom/amazonaws/services/s3/internal/Mimetypes;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    .line 106
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazonaws/services/s3/internal/Mimetypes;
    .locals 5

    .prologue
    .line 66
    const-class v3, Lcom/amazonaws/services/s3/internal/Mimetypes;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/amazonaws/services/s3/internal/Mimetypes;->mimetypes:Lcom/amazonaws/services/s3/internal/Mimetypes;

    if-eqz v2, :cond_0

    .line 67
    sget-object v2, Lcom/amazonaws/services/s3/internal/Mimetypes;->mimetypes:Lcom/amazonaws/services/s3/internal/Mimetypes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .local v1, "mimetypesFile":Ljava/io/InputStream;
    :goto_0
    monitor-exit v3

    return-object v2

    .line 69
    .end local v1    # "mimetypesFile":Ljava/io/InputStream;
    :cond_0
    :try_start_1
    new-instance v2, Lcom/amazonaws/services/s3/internal/Mimetypes;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/internal/Mimetypes;-><init>()V

    sput-object v2, Lcom/amazonaws/services/s3/internal/Mimetypes;->mimetypes:Lcom/amazonaws/services/s3/internal/Mimetypes;

    .line 70
    sget-object v2, Lcom/amazonaws/services/s3/internal/Mimetypes;->mimetypes:Lcom/amazonaws/services/s3/internal/Mimetypes;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v4, "/mime.types"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 71
    .restart local v1    # "mimetypesFile":Ljava/io/InputStream;
    if-eqz v1, :cond_3

    .line 73
    sget-object v2, Lcom/amazonaws/services/s3/internal/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    sget-object v2, Lcom/amazonaws/services/s3/internal/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    const-string/jumbo v4, "Loading mime types from file in the classpath: mime.types"

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :cond_1
    :try_start_2
    sget-object v2, Lcom/amazonaws/services/s3/internal/Mimetypes;->mimetypes:Lcom/amazonaws/services/s3/internal/Mimetypes;

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/Mimetypes;->loadAndReplaceMimetypes(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :cond_2
    :goto_1
    :try_start_3
    sget-object v2, Lcom/amazonaws/services/s3/internal/Mimetypes;->mimetypes:Lcom/amazonaws/services/s3/internal/Mimetypes;

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/amazonaws/services/s3/internal/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    sget-object v2, Lcom/amazonaws/services/s3/internal/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    const-string/jumbo v4, "Failed to load mime types from file in the classpath: mime.types"

    invoke-interface {v2, v4, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 66
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 91
    :cond_3
    :try_start_4
    sget-object v2, Lcom/amazonaws/services/s3/internal/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    sget-object v2, Lcom/amazonaws/services/s3/internal/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    const-string/jumbo v4, "Unable to find \'mime.types\' file in classpath"

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getMimetype(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 126
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/internal/Mimetypes;->getMimetype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimetype(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string/jumbo v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 148
    .local v1, "lastPeriodIndex":I
    if-lez v1, :cond_3

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 150
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "ext":Ljava/lang/String;
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 154
    .local v2, "mimetype":Ljava/lang/String;
    sget-object v3, Lcom/amazonaws/services/s3/internal/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    sget-object v3, Lcom/amazonaws/services/s3/internal/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Recognised extension \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\', mimetype is: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 179
    .end local v0    # "ext":Ljava/lang/String;
    .end local v2    # "mimetype":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 162
    .restart local v0    # "ext":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/amazonaws/services/s3/internal/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    sget-object v3, Lcom/amazonaws/services/s3/internal/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Extension \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' is unrecognized in mime type listing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", using default mime type: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "application/octet-stream"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 179
    .end local v0    # "ext":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string/jumbo v2, "application/octet-stream"

    goto :goto_0

    .line 174
    :cond_3
    sget-object v3, Lcom/amazonaws/services/s3/internal/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    sget-object v3, Lcom/amazonaws/services/s3/internal/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "File name has no extension, mime type cannot be recognised for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public loadAndReplaceMimetypes(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 194
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 196
    .local v2, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 198
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 200
    const-string/jumbo v5, "#"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 206
    new-instance v4, Ljava/util/StringTokenizer;

    const-string/jumbo v5, " \t"

    invoke-direct {v4, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .local v4, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 209
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "mimetype":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 212
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "extension":Ljava/lang/String;
    iget-object v5, p0, Lcom/amazonaws/services/s3/internal/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v5, Lcom/amazonaws/services/s3/internal/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 216
    sget-object v5, Lcom/amazonaws/services/s3/internal/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Setting mime type for extension \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' to \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1

    .line 225
    .end local v1    # "extension":Ljava/lang/String;
    .end local v3    # "mimetype":Ljava/lang/String;
    :cond_2
    sget-object v5, Lcom/amazonaws/services/s3/internal/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    sget-object v5, Lcom/amazonaws/services/s3/internal/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring mimetype with no associated file extensions: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 233
    .end local v4    # "st":Ljava/util/StringTokenizer;
    :cond_3
    return-void
.end method
