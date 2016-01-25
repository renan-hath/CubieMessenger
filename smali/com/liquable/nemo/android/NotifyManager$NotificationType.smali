.class final enum Lcom/liquable/nemo/android/NotifyManager$NotificationType;
.super Ljava/lang/Enum;
.source "NotifyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/NotifyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NotificationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/android/NotifyManager$NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/android/NotifyManager$NotificationType;

.field public static final enum ADWAYS_CAMPAIGN_NOTICE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

.field public static final enum CONFIRM_CHANNEL_SUBSCRIPTION:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

.field public static final enum CONFIRM_FRIEND:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

.field public static final enum CUBIE_HEAD:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

.field public static final enum DETECTED_NEW_PICTURE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

.field public static final enum DOWNLOAD_STICKER:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

.field public static final enum DOWNLOAD_STICKER_FAIL:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

.field public static final enum DOWNLOAD_WALLPAPER:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

.field public static final enum DOWNLOAD_WALLPAPER_FAIL:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

.field public static final enum FORUM_REPLY_DIGEST:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

.field public static final enum FRIEND_INVITE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

.field public static final enum GENERAL:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

.field public static final enum MSG_SEND_FAILED:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

.field public static final enum NEW_MESSAGE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

.field public static final enum PURCHASED_NOTICE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

.field public static final enum REACTIVATION_STICKER_NOTICE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

.field public static final enum SYSTEM_NOTICE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

.field public static final enum VERSION_UPGRADE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

.field public static final enum VOIP:Lcom/liquable/nemo/android/NotifyManager$NotificationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    const-string/jumbo v1, "NEW_MESSAGE"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->NEW_MESSAGE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .line 86
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    const-string/jumbo v1, "FRIEND_INVITE"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->FRIEND_INVITE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .line 87
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    const-string/jumbo v1, "CONFIRM_FRIEND"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->CONFIRM_FRIEND:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .line 88
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    const-string/jumbo v1, "CONFIRM_CHANNEL_SUBSCRIPTION"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->CONFIRM_CHANNEL_SUBSCRIPTION:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .line 89
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    const-string/jumbo v1, "PURCHASED_NOTICE"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->PURCHASED_NOTICE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .line 90
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    const-string/jumbo v1, "DOWNLOAD_STICKER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DOWNLOAD_STICKER:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .line 91
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    const-string/jumbo v1, "DOWNLOAD_STICKER_FAIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DOWNLOAD_STICKER_FAIL:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .line 92
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    const-string/jumbo v1, "DOWNLOAD_WALLPAPER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DOWNLOAD_WALLPAPER:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .line 93
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    const-string/jumbo v1, "DOWNLOAD_WALLPAPER_FAIL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DOWNLOAD_WALLPAPER_FAIL:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .line 94
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    const-string/jumbo v1, "SYSTEM_NOTICE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->SYSTEM_NOTICE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .line 95
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    const-string/jumbo v1, "REACTIVATION_STICKER_NOTICE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->REACTIVATION_STICKER_NOTICE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .line 96
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    const-string/jumbo v1, "GENERAL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->GENERAL:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .line 97
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    const-string/jumbo v1, "VOIP"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->VOIP:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .line 98
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    const-string/jumbo v1, "CUBIE_HEAD"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->CUBIE_HEAD:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .line 99
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    const-string/jumbo v1, "VERSION_UPGRADE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->VERSION_UPGRADE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .line 100
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    const-string/jumbo v1, "MSG_SEND_FAILED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->MSG_SEND_FAILED:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .line 101
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    const-string/jumbo v1, "DETECTED_NEW_PICTURE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DETECTED_NEW_PICTURE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .line 102
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    const-string/jumbo v1, "ADWAYS_CAMPAIGN_NOTICE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ADWAYS_CAMPAIGN_NOTICE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .line 103
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    const-string/jumbo v1, "FORUM_REPLY_DIGEST"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->FORUM_REPLY_DIGEST:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .line 84
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    sget-object v1, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->NEW_MESSAGE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->FRIEND_INVITE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->CONFIRM_FRIEND:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->CONFIRM_CHANNEL_SUBSCRIPTION:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->PURCHASED_NOTICE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DOWNLOAD_STICKER:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DOWNLOAD_STICKER_FAIL:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DOWNLOAD_WALLPAPER:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DOWNLOAD_WALLPAPER_FAIL:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->SYSTEM_NOTICE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->REACTIVATION_STICKER_NOTICE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->GENERAL:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->VOIP:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->CUBIE_HEAD:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->VERSION_UPGRADE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->MSG_SEND_FAILED:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DETECTED_NEW_PICTURE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ADWAYS_CAMPAIGN_NOTICE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->FORUM_REPLY_DIGEST:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->$VALUES:[Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/android/NotifyManager$NotificationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    const-class v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/android/NotifyManager$NotificationType;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->$VALUES:[Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/android/NotifyManager$NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    return-object v0
.end method
