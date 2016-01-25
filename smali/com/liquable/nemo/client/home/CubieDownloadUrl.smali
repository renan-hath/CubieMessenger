.class public final enum Lcom/liquable/nemo/client/home/CubieDownloadUrl;
.super Ljava/lang/Enum;
.source "CubieDownloadUrl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/home/CubieDownloadUrl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum LOGIN_ERROR:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum SHARE_ARTWORK_TO_FB:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum SHARE_TO_FB_MESSENGER:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum SHARE_TO_FB_TIMELINE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum SHARE_TO_FB_WALL_TO_WALL:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum SHARE_TO_INTENT:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum SHARE_TO_KAKAO_IOS:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum SHARE_TO_KIK:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum SHARE_TO_LINE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum SHARE_TO_LINE_IOS:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum SHARE_TO_SMS_CONTACT:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum SHARE_TO_SMS_CONTACT_DIRECTLY:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum SHARE_TO_SMS_CONTACT_IOS:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum SHARE_TO_TWITTER_DM:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum SHARE_TO_TWITTER_TIMELINE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum SHARE_TO_WECHAT:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum SHARE_TO_WHATSAPP:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum SHARE_TO_WHATSAPP_IOS:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum STICKER_SHOP:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum UNKNOWN_MESSAGE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

.field public static final enum UPGRADE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;


# instance fields
.field private final bitlyUrl:Ljava/lang/String;

.field private final originalUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "LOGIN_ERROR"

    const-string/jumbo v2, "http://palplus.me/download?referrer=utm_source%3DcubieAnd%26utm_medium%3Daction%26utm_campaign%3DloginError"

    const-string/jumbo v3, "http://bit.ly/CBloge"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->LOGIN_ERROR:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 7
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "SHARE_TO_INTENT"

    const-string/jumbo v2, "http://palplus.me/download?referrer=utm_source%3DcubieAnd%26utm_medium%3Dintent%26utm_campaign%3DshareApp"

    const-string/jumbo v3, "http://bit.ly/CBshre"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_INTENT:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 10
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "SHARE_TO_SMS_CONTACT"

    const-string/jumbo v2, "http://palplus.me/download?referrer=utm_source%3DcubieAnd%26utm_medium%3Dsms%26utm_campaign%3DshareApp"

    const-string/jumbo v3, "http://bit.ly/CBsmsc"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_SMS_CONTACT:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 13
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "UPGRADE"

    const-string/jumbo v2, "http://palplus.me/download?referrer=utm_source%3DcubieAnd%26utm_medium%3Daction%26utm_campaign%3Dupgrade"

    const-string/jumbo v3, "http://bit.ly/CBupgd"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->UPGRADE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 16
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "STICKER_SHOP"

    const-string/jumbo v2, "http://palplus.me/download?referrer=utm_source%3DcubieAnd%26utm_medium%3Daction%26utm_campaign%3DstickerShop"

    const-string/jumbo v3, "http://bit.ly/CBstsp"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->STICKER_SHOP:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 19
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "UNKNOWN_MESSAGE"

    const/4 v2, 0x5

    const-string/jumbo v3, "http://palplus.me/download?referrer=utm_source%3DcubieAnd%26utm_medium%3Daction%26utm_campaign%3DunknownMsg"

    const-string/jumbo v4, "http://bit.ly/CBukmg"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->UNKNOWN_MESSAGE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 22
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "SHARE_TO_FB_TIMELINE"

    const/4 v2, 0x6

    const-string/jumbo v3, "http://palplus.me/download?referrer=utm_source%3DcubieAnd%26utm_medium%3DfbTimeline%26utm_campaign%3DshareApp"

    const-string/jumbo v4, "http://bit.ly/CBfbtl"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_FB_TIMELINE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 25
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "SHARE_TO_TWITTER_TIMELINE"

    const/4 v2, 0x7

    const-string/jumbo v3, "http://palplus.me/download?referrer=utm_source%3DcubieAnd%26utm_medium%3Dtwitter%26utm_campaign%3DshareApp"

    const-string/jumbo v4, "http://bit.ly/CBtwtl"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_TWITTER_TIMELINE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 28
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "SHARE_TO_TWITTER_DM"

    const/16 v2, 0x8

    const-string/jumbo v3, "http://palplus.me/download?referrer=utm_source%3DcubieAnd%26utm_medium%3DtwitterDM%26utm_campaign%3DshareApp"

    const-string/jumbo v4, "http://bit.ly/CBtwdm"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_TWITTER_DM:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 31
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "SHARE_ARTWORK_TO_FB"

    const/16 v2, 0x9

    const-string/jumbo v3, "http://palplus.me/download?referrer=utm_source%3DcubieAnd%26utm_medium%3DfbPhoto%26utm_campaign%3DshareApp"

    const-string/jumbo v4, "http://bit.ly/CBfbph"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_ARTWORK_TO_FB:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 34
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "SHARE_TO_WHATSAPP"

    const/16 v2, 0xa

    const-string/jumbo v3, "http://palplus.me/download?referrer=utm_source%3DcubieAnd%26utm_medium%3Dwhatsapp%26utm_campaign%3DshareApp"

    const-string/jumbo v4, "http://bit.ly/CBwhap"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_WHATSAPP:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 37
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "SHARE_TO_KIK"

    const/16 v2, 0xb

    const-string/jumbo v3, "http://palplus.me/download?referrer=utm_source%3DcubieAnd%26utm_medium%3Dkik%26utm_campaign%3DshareApp"

    const-string/jumbo v4, "http://bit.ly/CBkikk"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_KIK:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 40
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "SHARE_TO_LINE"

    const/16 v2, 0xc

    const-string/jumbo v3, "http://palplus.me/download?referrer=utm_source%3DcubieAnd%26utm_medium%3Dline%26utm_campaign%3DshareApp"

    const-string/jumbo v4, "http://bit.ly/CBline"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_LINE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 43
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "SHARE_TO_SMS_CONTACT_DIRECTLY"

    const/16 v2, 0xd

    const-string/jumbo v3, "http://palplus.me/download?referrer=utm_source%3DcubieAnd%26utm_medium%3Dsms%26utm_campaign%3DsendSmsDirectly"

    const-string/jumbo v4, "http://bit.ly/CBsmsd"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_SMS_CONTACT_DIRECTLY:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 46
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "SHARE_TO_FB_WALL_TO_WALL"

    const/16 v2, 0xe

    const-string/jumbo v3, "http://palplus.me/download?referrer=utm_source%3DcubieAnd%26utm_medium%3DfbWallToWall%26utm_campaign%3DshareApp"

    const-string/jumbo v4, "http://bit.ly/CBwtow"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_FB_WALL_TO_WALL:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 49
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "SHARE_TO_WECHAT"

    const/16 v2, 0xf

    const-string/jumbo v3, "http://palplus.me/download?referrer=utm_source%3DcubieAnd%26utm_medium%3Dwechat%26utm_campaign%3DshareApp"

    const-string/jumbo v4, "http://bit.ly/CBwect"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_WECHAT:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 52
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "SHARE_TO_FB_MESSENGER"

    const/16 v2, 0x10

    const-string/jumbo v3, "http://palplus.me/download?referrer=utm_source%3DcubieAnd%26utm_medium%3DfbMessenger%26utm_campaign%3DshareApp"

    const-string/jumbo v4, "http://bit.ly/CBfbms"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_FB_MESSENGER:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 55
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "SHARE_TO_SMS_CONTACT_IOS"

    const/16 v2, 0x11

    const-string/jumbo v3, "http://palplus.me/download?referrer=utm_source%3DcubieIOS%26utm_medium%3Dsms%26utm_campaign%3DshareApp"

    const-string/jumbo v4, "http://bit.ly/CBsmsi"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_SMS_CONTACT_IOS:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 58
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "SHARE_TO_LINE_IOS"

    const/16 v2, 0x12

    const-string/jumbo v3, "http://palplus.me/download?referrer=utm_source%3DcubieIOS%26utm_medium%3Dline%26utm_campaign%3DshareApp"

    const-string/jumbo v4, "http://bit.ly/CBlini"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_LINE_IOS:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 61
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "SHARE_TO_WHATSAPP_IOS"

    const/16 v2, 0x13

    const-string/jumbo v3, "http://palplus.me/download?referrer=utm_source%3DcubieIOS%26utm_medium%3Dwhatsapp%26utm_campaign%3DshareApp"

    const-string/jumbo v4, "http://bit.ly/CBwhai"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_WHATSAPP_IOS:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 64
    new-instance v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    const-string/jumbo v1, "SHARE_TO_KAKAO_IOS"

    const/16 v2, 0x14

    const-string/jumbo v3, "http://palplus.me/download?referrer=utm_source%3DcubieIOS%26utm_medium%3Dkakao%26utm_campaign%3DshareApp"

    const-string/jumbo v4, "http://bit.ly/CBkkoi"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_KAKAO_IOS:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 3
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    sget-object v1, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->LOGIN_ERROR:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_INTENT:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_SMS_CONTACT:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v1, v0, v7

    sget-object v1, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->UPGRADE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v1, v0, v8

    sget-object v1, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->STICKER_SHOP:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->UNKNOWN_MESSAGE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_FB_TIMELINE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_TWITTER_TIMELINE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_TWITTER_DM:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_ARTWORK_TO_FB:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_WHATSAPP:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_KIK:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_LINE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_SMS_CONTACT_DIRECTLY:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_FB_WALL_TO_WALL:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_WECHAT:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_FB_MESSENGER:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_SMS_CONTACT_IOS:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_LINE_IOS:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_WHATSAPP_IOS:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->SHARE_TO_KAKAO_IOS:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->$VALUES:[Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "originalUrl"    # Ljava/lang/String;
    .param p4, "bitlyUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->originalUrl:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->bitlyUrl:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/home/CubieDownloadUrl;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/home/CubieDownloadUrl;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->$VALUES:[Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/home/CubieDownloadUrl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    return-object v0
.end method


# virtual methods
.method public getBitlyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->bitlyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->originalUrl:Ljava/lang/String;

    return-object v0
.end method
