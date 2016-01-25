.class public final enum Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;
.super Ljava/lang/Enum;
.source "CubieProfileUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/CubieProfileUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackingKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

.field public static final enum cubie_profile_intent_share:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

.field public static final enum facebook_feed:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

.field public static final enum facebook_wall:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

.field public static final enum kik:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

.field public static final enum line:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

.field public static final enum sms:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

.field public static final enum twitter_dm:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

.field public static final enum twitter_feed:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

.field public static final enum wechat:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

.field public static final enum whatsapp:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    new-instance v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    const-string/jumbo v1, "sms"

    const-string/jumbo v2, "s"

    invoke-direct {v0, v1, v4, v2}, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->sms:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 49
    new-instance v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    const-string/jumbo v1, "whatsapp"

    const-string/jumbo v2, "w"

    invoke-direct {v0, v1, v5, v2}, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->whatsapp:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 50
    new-instance v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    const-string/jumbo v1, "kik"

    const-string/jumbo v2, "k"

    invoke-direct {v0, v1, v6, v2}, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->kik:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 51
    new-instance v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    const-string/jumbo v1, "line"

    const-string/jumbo v2, "l"

    invoke-direct {v0, v1, v7, v2}, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->line:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 52
    new-instance v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    const-string/jumbo v1, "wechat"

    const-string/jumbo v2, "wc"

    invoke-direct {v0, v1, v8, v2}, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->wechat:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 53
    new-instance v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    const-string/jumbo v1, "facebook_wall"

    const/4 v2, 0x5

    const-string/jumbo v3, "fw"

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->facebook_wall:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 54
    new-instance v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    const-string/jumbo v1, "facebook_feed"

    const/4 v2, 0x6

    const-string/jumbo v3, "ff"

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->facebook_feed:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 55
    new-instance v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    const-string/jumbo v1, "twitter_dm"

    const/4 v2, 0x7

    const-string/jumbo v3, "td"

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->twitter_dm:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 56
    new-instance v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    const-string/jumbo v1, "twitter_feed"

    const/16 v2, 0x8

    const-string/jumbo v3, "tf"

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->twitter_feed:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 57
    new-instance v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    const-string/jumbo v1, "cubie_profile_intent_share"

    const/16 v2, 0x9

    const-string/jumbo v3, "c"

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->cubie_profile_intent_share:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 47
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    sget-object v1, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->sms:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->whatsapp:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->kik:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->line:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    aput-object v1, v0, v7

    sget-object v1, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->wechat:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->facebook_wall:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->facebook_feed:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->twitter_dm:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->twitter_feed:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->cubie_profile_intent_share:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->$VALUES:[Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput-object p3, p0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->code:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->code:Ljava/lang/String;

    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;
    .locals 5
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {}, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->values()[Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 61
    .local v0, "key":Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;
    iget-object v4, v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->code:Ljava/lang/String;

    invoke-static {p0, v4}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    .end local v0    # "key":Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;
    :goto_1
    return-object v0

    .line 60
    .restart local v0    # "key":Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "key":Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->$VALUES:[Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    invoke-virtual {v0}, [Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    return-object v0
.end method
