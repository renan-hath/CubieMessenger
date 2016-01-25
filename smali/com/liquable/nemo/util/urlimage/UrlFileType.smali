.class public final enum Lcom/liquable/nemo/util/urlimage/UrlFileType;
.super Ljava/lang/Enum;
.source "UrlFileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/util/urlimage/UrlFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/util/urlimage/UrlFileType;

.field public static final enum AD_ITEM:Lcom/liquable/nemo/util/urlimage/UrlFileType;

.field public static final enum FORUM_IMAGES:Lcom/liquable/nemo/util/urlimage/UrlFileType;

.field public static final enum OPEN_API_APP_MSG_BUTTON:Lcom/liquable/nemo/util/urlimage/UrlFileType;

.field public static final enum OPEN_API_APP_MSG_IMAGE:Lcom/liquable/nemo/util/urlimage/UrlFileType;

.field public static final enum STICKER_NOTICE_THUMBNAIL:Lcom/liquable/nemo/util/urlimage/UrlFileType;

.field public static final enum YOUTUBE_THUMBNAIL:Lcom/liquable/nemo/util/urlimage/UrlFileType;


# instance fields
.field private localFolder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 11
    new-instance v0, Lcom/liquable/nemo/util/urlimage/UrlFileType;

    const-string/jumbo v1, "STICKER_NOTICE_THUMBNAIL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "sticker_thumbnail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/liquable/nemo/util/urlimage/UrlFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/urlimage/UrlFileType;->STICKER_NOTICE_THUMBNAIL:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    .line 12
    new-instance v0, Lcom/liquable/nemo/util/urlimage/UrlFileType;

    const-string/jumbo v1, "AD_ITEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ad_item"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/liquable/nemo/util/urlimage/UrlFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/urlimage/UrlFileType;->AD_ITEM:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    .line 13
    new-instance v0, Lcom/liquable/nemo/util/urlimage/UrlFileType;

    const-string/jumbo v1, "OPEN_API_APP_MSG_IMAGE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "open_api_app_msg_image"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/liquable/nemo/util/urlimage/UrlFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/urlimage/UrlFileType;->OPEN_API_APP_MSG_IMAGE:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    .line 15
    new-instance v0, Lcom/liquable/nemo/util/urlimage/UrlFileType;

    const-string/jumbo v1, "OPEN_API_APP_MSG_BUTTON"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "open_api_app_msg_button"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/liquable/nemo/util/urlimage/UrlFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/urlimage/UrlFileType;->OPEN_API_APP_MSG_BUTTON:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    .line 17
    new-instance v0, Lcom/liquable/nemo/util/urlimage/UrlFileType;

    const-string/jumbo v1, "FORUM_IMAGES"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "forum"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2}, Lcom/liquable/nemo/util/urlimage/UrlFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/urlimage/UrlFileType;->FORUM_IMAGES:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    .line 18
    new-instance v0, Lcom/liquable/nemo/util/urlimage/UrlFileType;

    const-string/jumbo v1, "YOUTUBE_THUMBNAIL"

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "youtube"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/util/urlimage/UrlFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/urlimage/UrlFileType;->YOUTUBE_THUMBNAIL:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    .line 10
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/liquable/nemo/util/urlimage/UrlFileType;

    sget-object v1, Lcom/liquable/nemo/util/urlimage/UrlFileType;->STICKER_NOTICE_THUMBNAIL:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/util/urlimage/UrlFileType;->AD_ITEM:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/util/urlimage/UrlFileType;->OPEN_API_APP_MSG_IMAGE:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/liquable/nemo/util/urlimage/UrlFileType;->OPEN_API_APP_MSG_BUTTON:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/liquable/nemo/util/urlimage/UrlFileType;->FORUM_IMAGES:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/util/urlimage/UrlFileType;->YOUTUBE_THUMBNAIL:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/util/urlimage/UrlFileType;->$VALUES:[Lcom/liquable/nemo/util/urlimage/UrlFileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "localFolder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/liquable/nemo/util/urlimage/UrlFileType;->localFolder:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 23
    :try_start_0
    const-string/jumbo v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 27
    .local v2, "bytes":[B
    const-string/jumbo v3, "0123456789ABCDEF"

    .line 28
    .local v3, "digits":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 29
    .local v1, "buf":Ljava/lang/StringBuffer;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-byte v0, v2, v5

    .line 30
    .local v0, "b":B
    const-string/jumbo v7, "0123456789ABCDEF"

    and-int/lit16 v8, v0, 0xf0

    shr-int/lit8 v8, v8, 0x4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 31
    const-string/jumbo v7, "0123456789ABCDEF"

    and-int/lit8 v8, v0, 0xf

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 29
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 24
    .end local v0    # "b":B
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "bytes":[B
    .end local v3    # "digits":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 25
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "MD5 not supported"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 33
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    .restart local v2    # "bytes":[B
    .restart local v3    # "digits":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/util/urlimage/UrlFileType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/liquable/nemo/util/urlimage/UrlFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/urlimage/UrlFileType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/util/urlimage/UrlFileType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/liquable/nemo/util/urlimage/UrlFileType;->$VALUES:[Lcom/liquable/nemo/util/urlimage/UrlFileType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/util/urlimage/UrlFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/util/urlimage/UrlFileType;

    return-object v0
.end method


# virtual methods
.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getInstance()Lcom/liquable/nemo/storage/DeviceExternalStorage;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/util/urlimage/UrlFileType;->getKeyPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getKeyPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/liquable/nemo/util/urlimage/UrlFileType;->localFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/liquable/nemo/util/urlimage/UrlFileType;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
