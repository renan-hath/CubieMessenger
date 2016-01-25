.class public final enum Lcom/liquable/nemo/message/model/MessageItemViewType;
.super Ljava/lang/Enum;
.source "MessageItemViewType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/message/model/MessageItemViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum ADD_CHAT_GROUP_MEMBER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum ASK_LOCATION_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum ASK_LOCATION_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum ASK_PICTURE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum ASK_PICTURE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum AUDIO_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum AUDIO_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum CALL_LOG_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum CALL_LOG_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum CREATE_CHAT_GROUP:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum CUSTOM_STICKER_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum CUSTOM_STICKER_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum FILE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum FILE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum IGNORE:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum LEAVE_CHAT_GROUP:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum LIKE_PICTURE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum LIKE_PICTURE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum LOCATION_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum LOCATION_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum MISSED_CALL_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum OPEN_API_APP_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum OPEN_API_APP_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum PAINT_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum PAINT_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum PICTURE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum PICTURE_OTHER_BIG:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum PICTURE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum PICTURE_SELF_BIG:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum PIN_ASSET_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum PIN_ASSET_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum PUB_CHANNEL_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum PUB_CHANNEL_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum REMOVE_CHAT_GROUP_MEMBER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum SECRET_PICTURE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum SECRET_PICTURE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum SECRET_TEXT_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum SECRET_TEXT_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum STICKER_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum STICKER_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum TEXT_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum TEXT_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum UNKNOWN_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum UNKNOWN_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum UPDATE_CHAT_GROUP_ICON:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum UPDATE_CHAT_GROUP_NAME:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum VIDEO_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum VIDEO_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum VOICE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum VOICE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum YOUTUBE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

.field public static final enum YOUTUBE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;


# instance fields
.field private itemViewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "IGNORE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->IGNORE:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 7
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "TEXT_SELF"

    invoke-direct {v0, v1, v5, v4}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->TEXT_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 8
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "TEXT_OTHER"

    invoke-direct {v0, v1, v6, v5}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->TEXT_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 9
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "ADD_CHAT_GROUP_MEMBER"

    invoke-direct {v0, v1, v7, v6}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->ADD_CHAT_GROUP_MEMBER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 10
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "CREATE_CHAT_GROUP"

    invoke-direct {v0, v1, v8, v7}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->CREATE_CHAT_GROUP:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 11
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "LEAVE_CHAT_GROUP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->LEAVE_CHAT_GROUP:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 12
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "UPDATE_CHAT_GROUP_NAME"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->UPDATE_CHAT_GROUP_NAME:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 13
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "PICTURE_SELF"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->PICTURE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 14
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "PICTURE_OTHER"

    const/16 v2, 0x8

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->PICTURE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 15
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "AUDIO_SELF"

    const/16 v2, 0x9

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->AUDIO_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 16
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "AUDIO_OTHER"

    const/16 v2, 0xa

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->AUDIO_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 17
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "VIDEO_SELF"

    const/16 v2, 0xb

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->VIDEO_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 18
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "VIDEO_OTHER"

    const/16 v2, 0xc

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->VIDEO_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 19
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "PAINT_SELF"

    const/16 v2, 0xd

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->PAINT_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 20
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "PAINT_OTHER"

    const/16 v2, 0xe

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->PAINT_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 21
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "UNKNOWN_SELF"

    const/16 v2, 0xf

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->UNKNOWN_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 22
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "STICKER_SELF"

    const/16 v2, 0x10

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->STICKER_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 23
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "STICKER_OTHER"

    const/16 v2, 0x11

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->STICKER_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 24
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "VOICE_SELF"

    const/16 v2, 0x12

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->VOICE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 25
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "VOICE_OTHER"

    const/16 v2, 0x13

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->VOICE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 26
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "UNKNOWN_OTHER"

    const/16 v2, 0x14

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->UNKNOWN_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 27
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "LOCATION_SELF"

    const/16 v2, 0x15

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->LOCATION_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 28
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "LOCATION_OTHER"

    const/16 v2, 0x16

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->LOCATION_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 29
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "SECRET_TEXT_SELF"

    const/16 v2, 0x17

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->SECRET_TEXT_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 30
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "SECRET_TEXT_OTHER"

    const/16 v2, 0x18

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->SECRET_TEXT_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 31
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "ASK_PICTURE_SELF"

    const/16 v2, 0x19

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->ASK_PICTURE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 32
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "ASK_PICTURE_OTHER"

    const/16 v2, 0x1a

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->ASK_PICTURE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 33
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "ASK_LOCATION_SELF"

    const/16 v2, 0x1b

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->ASK_LOCATION_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 34
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "ASK_LOCATION_OTHER"

    const/16 v2, 0x1c

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->ASK_LOCATION_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 35
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "YOUTUBE_SELF"

    const/16 v2, 0x1d

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->YOUTUBE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 36
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "YOUTUBE_OTHER"

    const/16 v2, 0x1e

    const/16 v3, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->YOUTUBE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 37
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "SECRET_PICTURE_SELF"

    const/16 v2, 0x1f

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->SECRET_PICTURE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 38
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "SECRET_PICTURE_OTHER"

    const/16 v2, 0x20

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->SECRET_PICTURE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 39
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "CALL_LOG_SELF"

    const/16 v2, 0x21

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->CALL_LOG_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 40
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "CALL_LOG_OTHER"

    const/16 v2, 0x22

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->CALL_LOG_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 41
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "MISSED_CALL_OTHER"

    const/16 v2, 0x23

    const/16 v3, 0x22

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->MISSED_CALL_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 42
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "UPDATE_CHAT_GROUP_ICON"

    const/16 v2, 0x24

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->UPDATE_CHAT_GROUP_ICON:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 43
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "PICTURE_SELF_BIG"

    const/16 v2, 0x25

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->PICTURE_SELF_BIG:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 44
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "PICTURE_OTHER_BIG"

    const/16 v2, 0x26

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->PICTURE_OTHER_BIG:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 45
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "PIN_ASSET_SELF"

    const/16 v2, 0x27

    const/16 v3, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->PIN_ASSET_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 46
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "PIN_ASSET_OTHER"

    const/16 v2, 0x28

    const/16 v3, 0x27

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->PIN_ASSET_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 47
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "LIKE_PICTURE_SELF"

    const/16 v2, 0x29

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->LIKE_PICTURE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 48
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "LIKE_PICTURE_OTHER"

    const/16 v2, 0x2a

    const/16 v3, 0x29

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->LIKE_PICTURE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 49
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "REMOVE_CHAT_GROUP_MEMBER"

    const/16 v2, 0x2b

    const/16 v3, 0x2a

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->REMOVE_CHAT_GROUP_MEMBER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 50
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "FILE_SELF"

    const/16 v2, 0x2c

    const/16 v3, 0x2b

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->FILE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 51
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "FILE_OTHER"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->FILE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 52
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "CUSTOM_STICKER_SELF"

    const/16 v2, 0x2e

    const/16 v3, 0x2d

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->CUSTOM_STICKER_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 53
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "CUSTOM_STICKER_OTHER"

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->CUSTOM_STICKER_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 54
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "OPEN_API_APP_SELF"

    const/16 v2, 0x30

    const/16 v3, 0x2f

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->OPEN_API_APP_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 55
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "OPEN_API_APP_OTHER"

    const/16 v2, 0x31

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->OPEN_API_APP_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 56
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "PUB_CHANNEL_SELF"

    const/16 v2, 0x32

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->PUB_CHANNEL_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 57
    new-instance v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    const-string/jumbo v1, "PUB_CHANNEL_OTHER"

    const/16 v2, 0x33

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/model/MessageItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->PUB_CHANNEL_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 5
    const/16 v0, 0x34

    new-array v0, v0, [Lcom/liquable/nemo/message/model/MessageItemViewType;

    sget-object v1, Lcom/liquable/nemo/message/model/MessageItemViewType;->IGNORE:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/message/model/MessageItemViewType;->TEXT_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/message/model/MessageItemViewType;->TEXT_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/message/model/MessageItemViewType;->ADD_CHAT_GROUP_MEMBER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/liquable/nemo/message/model/MessageItemViewType;->CREATE_CHAT_GROUP:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->LEAVE_CHAT_GROUP:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->UPDATE_CHAT_GROUP_NAME:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->PICTURE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->PICTURE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->AUDIO_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->AUDIO_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->VIDEO_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->VIDEO_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->PAINT_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->PAINT_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->UNKNOWN_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->STICKER_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->STICKER_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->VOICE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->VOICE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->UNKNOWN_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->LOCATION_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->LOCATION_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->SECRET_TEXT_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->SECRET_TEXT_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->ASK_PICTURE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->ASK_PICTURE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->ASK_LOCATION_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->ASK_LOCATION_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->YOUTUBE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->YOUTUBE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->SECRET_PICTURE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->SECRET_PICTURE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->CALL_LOG_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->CALL_LOG_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->MISSED_CALL_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->UPDATE_CHAT_GROUP_ICON:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->PICTURE_SELF_BIG:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->PICTURE_OTHER_BIG:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->PIN_ASSET_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->PIN_ASSET_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->LIKE_PICTURE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->LIKE_PICTURE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->REMOVE_CHAT_GROUP_MEMBER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->FILE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->FILE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->CUSTOM_STICKER_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->CUSTOM_STICKER_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->OPEN_API_APP_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->OPEN_API_APP_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->PUB_CHANNEL_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/liquable/nemo/message/model/MessageItemViewType;->PUB_CHANNEL_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->$VALUES:[Lcom/liquable/nemo/message/model/MessageItemViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "itemViewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/liquable/nemo/message/model/MessageItemViewType;->itemViewType:I

    .line 78
    return-void
.end method

.method public static fromItemViewType(I)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 5
    .param p0, "itemViewType"    # I

    .prologue
    .line 61
    invoke-static {}, Lcom/liquable/nemo/message/model/MessageItemViewType;->values()[Lcom/liquable/nemo/message/model/MessageItemViewType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 62
    .local v0, "t":Lcom/liquable/nemo/message/model/MessageItemViewType;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/MessageItemViewType;->getItemViewType()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 67
    .end local v0    # "t":Lcom/liquable/nemo/message/model/MessageItemViewType;
    :goto_1
    return-object v0

    .line 61
    .restart local v0    # "t":Lcom/liquable/nemo/message/model/MessageItemViewType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "t":Lcom/liquable/nemo/message/model/MessageItemViewType;
    :cond_1
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->IGNORE:Lcom/liquable/nemo/message/model/MessageItemViewType;

    goto :goto_1
.end method

.method public static getViewTypeCount()I
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/liquable/nemo/message/model/MessageItemViewType;->values()[Lcom/liquable/nemo/message/model/MessageItemViewType;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/MessageItemViewType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->$VALUES:[Lcom/liquable/nemo/message/model/MessageItemViewType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/message/model/MessageItemViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/message/model/MessageItemViewType;

    return-object v0
.end method


# virtual methods
.method public getItemViewType()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/liquable/nemo/message/model/MessageItemViewType;->itemViewType:I

    return v0
.end method
