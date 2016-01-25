.class public Lcom/liquable/nemo/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.liquable.nemo"

.field public static final APPS_FLYER_DEV_KEY:Ljava/lang/String; = "nXhZkGTkT9KdcVRsgH4ksm"

.field public static final C2DM_ACCOUNT:Ljava/lang/String; = "android@liquable.com"

.field public static final C2DM_REGISTERED:Ljava/lang/String; = "com.liquable.nemo.C2DM_REGISTERED"

.field public static final CUBIE_HOME_PAGE:Ljava/lang/String; = "http://www.cubie.com"

.field public static final CURRENT_VERSION:Lcom/liquable/nemo/NemoVersion;

.field public static final DEFAULT_PICTURE_THUMBNAIL_SIZE_IN_DP:I = 0xc0

.field public static final DEFAULT_THUMBNAIL_SIZE_IN_DP:I = 0x96

.field public static final GCM_PROJECT_NUMBER:Ljava/lang/String; = "629097320884"

.field public static final GOOGLE_API_KEY:Ljava/lang/String; = "AIzaSyAzkzveJkcwCEIFGw3l25Azoji5YXkZ-Zo"

.field public static final KEY_EVENT_CODE:Ljava/lang/String; = "com.liquable.nemo.KEY_EVENT_CODE"

.field public static final LEGACY_STICKER_VERSION:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "nemo_debug"

.field public static final LOG_TAG_SOCKET:Ljava/lang/String; = "nemo_socket"

.field public static final MAX_CHATG_GROUP_NAME_LENGTH:I = 0x19

.field public static final MEMBER_LIMIT:I = 0xc8

.field public static final NICKNAME:Ljava/lang/String; = "com.liquable.nemo.NICKNAME"

.field public static final NICKNAME_MAX_LENGTH:I = 0x14

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.liquable.nemo"

.field public static final PHONE:Ljava/lang/String; = "com.liquable.nemo.PHONE"

.field public static final PREFS:Ljava/lang/String; = "com.liquable.nemo.PREFS"

.field public static final PROFILE_OS_TYPE:Ljava/lang/String; = "android"

.field public static final S3_ENDPOINT:Ljava/lang/String; = "s3.amazonaws.com"

.field public static final SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

.field public static final STICKER_VERSION:I = 0x2

.field public static final USER_ID:Ljava/lang/String; = "com.liquable.nemo.USER_ID"

.field public static final USER_NAME:Ljava/lang/String; = "com.liquable.nemo.USER_NAME"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 32
    new-instance v0, Lcom/liquable/nemo/NemoVersion;

    const/16 v1, 0x21b

    invoke-direct {v0, v2, v2, v1}, Lcom/liquable/nemo/NemoVersion;-><init>(III)V

    sput-object v0, Lcom/liquable/nemo/Constants;->CURRENT_VERSION:Lcom/liquable/nemo/NemoVersion;

    .line 98
    sget-object v0, Lcom/liquable/nemo/client/ServerType;->LOCAL:Lcom/liquable/nemo/client/ServerType;

    invoke-static {v0}, Lcom/liquable/nemo/Constants;->reflectServerType(Lcom/liquable/nemo/client/ServerType;)Lcom/liquable/nemo/client/ServerType;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    .line 99
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFlyFlavor()Z
    .locals 2

    .prologue
    .line 115
    const-string/jumbo v0, "fly"

    const-string/jumbo v1, "full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFullFlavor()Z
    .locals 2

    .prologue
    .line 111
    const-string/jumbo v0, "full"

    const-string/jumbo v1, "full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final reflectServerType(Lcom/liquable/nemo/client/ServerType;)Lcom/liquable/nemo/client/ServerType;
    .locals 5
    .param p0, "defaultValue"    # Lcom/liquable/nemo/client/ServerType;

    .prologue
    .line 17
    :try_start_0
    const-class v3, Lcom/liquable/nemo/BuildConfig;

    const-string/jumbo v4, "SERVER_TYPE"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 18
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 20
    check-cast v2, Ljava/lang/String;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-static {v2}, Lcom/liquable/nemo/client/ServerType;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/ServerType;

    move-result-object p0

    .line 25
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local p0    # "defaultValue":Lcom/liquable/nemo/client/ServerType;
    :goto_0
    return-object p0

    .line 22
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "value":Ljava/lang/Object;
    .restart local p0    # "defaultValue":Lcom/liquable/nemo/client/ServerType;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "SERVER_TYPE field not String or null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0

    .line 26
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "unexpected"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
