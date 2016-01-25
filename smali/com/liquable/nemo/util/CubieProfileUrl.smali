.class public Lcom/liquable/nemo/util/CubieProfileUrl;
.super Ljava/lang/Object;
.source "CubieProfileUrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;,
        Lcom/liquable/nemo/util/CubieProfileUrl$Part;
    }
.end annotation


# static fields
.field private static URL_PATTERN:Ljava/lang/String;

.field private static URL_TEMPLATE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const-string/jumbo v0, "http://palplus.me/~%s/%s?%s"

    sput-object v0, Lcom/liquable/nemo/util/CubieProfileUrl;->URL_TEMPLATE:Ljava/lang/String;

    .line 137
    const-string/jumbo v0, "http://palplus.me/~(\\w+)/([a-zA-Z0-9_-]{4})(\\?(\\w+))?"

    sput-object v0, Lcom/liquable/nemo/util/CubieProfileUrl;->URL_PATTERN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static getSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "cubieId"    # Ljava/lang/String;

    .prologue
    .line 77
    :try_start_0
    const-string/jumbo v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 78
    .local v2, "mac":Ljavax/crypto/Mac;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Lcom/liquable/nemo/util/CubiePublicUrlSalt;->BYTES:[B

    invoke-virtual {v2}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 79
    .local v3, "secret":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 81
    .local v0, "digest":[B
    const/16 v4, 0x8

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    .line 82
    .end local v0    # "digest":[B
    .end local v2    # "mac":Ljavax/crypto/Mac;
    .end local v3    # "secret":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 84
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v1

    .line 85
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static getUrl(Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;)Ljava/lang/String;
    .locals 1
    .param p0, "trackingKey"    # Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .prologue
    .line 120
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/liquable/nemo/util/CubieProfileUrl;->getUrl(Ljava/lang/String;Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUrl(Ljava/lang/String;Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;)Ljava/lang/String;
    .locals 4
    .param p0, "cubieId"    # Ljava/lang/String;
    .param p1, "trackingKey"    # Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .prologue
    .line 90
    invoke-static {}, Lcom/liquable/nemo/FeatureLock;->isPublicLinkEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/liquable/nemo/util/CubieProfileUrl;->URL_TEMPLATE:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/liquable/nemo/util/CubieProfileUrl;->getSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    # getter for: Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->code:Ljava/lang/String;
    invoke-static {p1}, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->access$000(Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 94
    :cond_0
    sget-object v0, Lcom/liquable/nemo/util/CubieProfileUrl$1;->$SwitchMap$com$liquable$nemo$util$CubieProfileUrl$TrackingKey:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 116
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :pswitch_0
    sget-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_SMS_CONTACT_DIRECTLY:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->getBitlyUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :pswitch_1
    sget-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_INTENT:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->getBitlyUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :pswitch_2
    sget-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_FB_TIMELINE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->getBitlyUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :pswitch_3
    sget-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_FB_WALL_TO_WALL:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->getBitlyUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :pswitch_4
    sget-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_KIK:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->getBitlyUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :pswitch_5
    sget-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_LINE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->getBitlyUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :pswitch_6
    sget-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_TWITTER_DM:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->getBitlyUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 110
    :pswitch_7
    sget-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_TWITTER_TIMELINE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->getBitlyUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    :pswitch_8
    sget-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_WECHAT:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->getBitlyUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :pswitch_9
    sget-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_WHATSAPP:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->getBitlyUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static parse(Ljava/lang/String;)Lcom/liquable/nemo/util/CubieProfileUrl$Part;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-object v2

    .line 127
    :cond_1
    sget-object v3, Lcom/liquable/nemo/util/CubieProfileUrl;->URL_PATTERN:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 128
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 129
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    new-instance v2, Lcom/liquable/nemo/util/CubieProfileUrl$Part;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/liquable/nemo/util/CubieProfileUrl$Part;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
