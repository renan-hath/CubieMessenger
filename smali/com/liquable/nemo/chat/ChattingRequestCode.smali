.class public final enum Lcom/liquable/nemo/chat/ChattingRequestCode;
.super Ljava/lang/Enum;
.source "ChattingRequestCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/chat/ChattingRequestCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum ADD_MEMBER:Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum CHANGE_WALLPAPER:Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum CREATE_CUSTOM_STICKER:Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum FACEBOOK_AUTH:Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum GET_LOCATION:Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum GET_LOCATION_FROM_ASK:Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum INTENT_SHARE:Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum MANAGE_CUSTOM_STICKER:Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum OPEN_CHAT_GROUP_MEDIA_SHARE_BOARD:Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum PASTE_PICTURE_ON_SKETCH:Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum PICK_AUDIO:Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum PICK_PHOTO:Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum PICK_VIDEO:Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum PICK_YOUTUBE:Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum SEND_VIDEO_FROM_MAIN_TAB:Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum SHARE_PAINT_AND_LOGIN_TO_FACEBOOK:Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum SHOW_GROUP_INFO:Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum TAKE_PHOTO:Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum TAKE_PHOTO_FROM_ASK:Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum UPDATE_CHAT_GROUP_ICON:Lcom/liquable/nemo/chat/ChattingRequestCode;

.field public static final enum UPDATE_YOUTUBE:Lcom/liquable/nemo/chat/ChattingRequestCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "PICK_PHOTO"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_PHOTO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 5
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "TAKE_PHOTO"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->TAKE_PHOTO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 6
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "TAKE_PHOTO_FROM_ASK"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->TAKE_PHOTO_FROM_ASK:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 7
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "GET_LOCATION"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->GET_LOCATION:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 8
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "GET_LOCATION_FROM_ASK"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->GET_LOCATION_FROM_ASK:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 9
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "PICK_VIDEO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_VIDEO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 10
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "PICK_AUDIO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_AUDIO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 11
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "INTENT_SHARE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->INTENT_SHARE:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 12
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "PASTE_PICTURE_ON_SKETCH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->PASTE_PICTURE_ON_SKETCH:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 13
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "CHANGE_WALLPAPER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->CHANGE_WALLPAPER:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 14
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "UPDATE_CHAT_GROUP_ICON"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->UPDATE_CHAT_GROUP_ICON:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 15
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "SHOW_GROUP_INFO"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->SHOW_GROUP_INFO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 16
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "ADD_MEMBER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->ADD_MEMBER:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 17
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "SHARE_PAINT_AND_LOGIN_TO_FACEBOOK"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->SHARE_PAINT_AND_LOGIN_TO_FACEBOOK:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 18
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "OPEN_CHAT_GROUP_MEDIA_SHARE_BOARD"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->OPEN_CHAT_GROUP_MEDIA_SHARE_BOARD:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 19
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "FACEBOOK_AUTH"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->FACEBOOK_AUTH:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 20
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "PICK_YOUTUBE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_YOUTUBE:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 21
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "UPDATE_YOUTUBE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->UPDATE_YOUTUBE:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 22
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "SEND_VIDEO_FROM_MAIN_TAB"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->SEND_VIDEO_FROM_MAIN_TAB:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 23
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "MANAGE_CUSTOM_STICKER"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->MANAGE_CUSTOM_STICKER:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 24
    new-instance v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    const-string/jumbo v1, "CREATE_CUSTOM_STICKER"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->CREATE_CUSTOM_STICKER:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 3
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/liquable/nemo/chat/ChattingRequestCode;

    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_PHOTO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->TAKE_PHOTO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->TAKE_PHOTO_FROM_ASK:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->GET_LOCATION:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->GET_LOCATION_FROM_ASK:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_VIDEO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_AUDIO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->INTENT_SHARE:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->PASTE_PICTURE_ON_SKETCH:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->CHANGE_WALLPAPER:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->UPDATE_CHAT_GROUP_ICON:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->SHOW_GROUP_INFO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->ADD_MEMBER:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->SHARE_PAINT_AND_LOGIN_TO_FACEBOOK:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->OPEN_CHAT_GROUP_MEDIA_SHARE_BOARD:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->FACEBOOK_AUTH:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_YOUTUBE:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->UPDATE_YOUTUBE:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->SEND_VIDEO_FROM_MAIN_TAB:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->MANAGE_CUSTOM_STICKER:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->CREATE_CUSTOM_STICKER:Lcom/liquable/nemo/chat/ChattingRequestCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->$VALUES:[Lcom/liquable/nemo/chat/ChattingRequestCode;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/chat/ChattingRequestCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/ChattingRequestCode;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/chat/ChattingRequestCode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->$VALUES:[Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-virtual {v0}, [Lcom/liquable/nemo/chat/ChattingRequestCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/chat/ChattingRequestCode;

    return-object v0
.end method
