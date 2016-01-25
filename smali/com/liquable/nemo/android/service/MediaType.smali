.class public final enum Lcom/liquable/nemo/android/service/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/android/service/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/android/service/MediaType;

.field public static final enum AUDIO:Lcom/liquable/nemo/android/service/MediaType;

.field public static final enum AUDIO_THUMBNAIL:Lcom/liquable/nemo/android/service/MediaType;

.field public static final enum COVER:Lcom/liquable/nemo/android/service/MediaType;

.field public static final enum MAP:Lcom/liquable/nemo/android/service/MediaType;

.field public static final MEDIA_TYPE_KEY:Ljava/lang/String; = "MEDIA_TYPE"

.field public static final enum PAINT:Lcom/liquable/nemo/android/service/MediaType;

.field public static final enum PAINT_CACHE:Lcom/liquable/nemo/android/service/MediaType;

.field public static final enum PICTURE:Lcom/liquable/nemo/android/service/MediaType;

.field public static final enum PICTURE_THUMBNAIL:Lcom/liquable/nemo/android/service/MediaType;

.field public static final enum SECRET_PICTURE:Lcom/liquable/nemo/android/service/MediaType;

.field public static final enum USERICON:Lcom/liquable/nemo/android/service/MediaType;

.field public static final enum VIDEO:Lcom/liquable/nemo/android/service/MediaType;

.field public static final enum VIDEO_THUMBNAIL:Lcom/liquable/nemo/android/service/MediaType;

.field public static final enum VOICE:Lcom/liquable/nemo/android/service/MediaType;

.field public static final enum VOID:Lcom/liquable/nemo/android/service/MediaType;


# instance fields
.field protected final localPreserveFolder:Ljava/lang/String;


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
    new-instance v0, Lcom/liquable/nemo/android/service/MediaType;

    const-string/jumbo v1, "PICTURE"

    const-string/jumbo v2, "cubie_picture"

    invoke-direct {v0, v1, v4, v2}, Lcom/liquable/nemo/android/service/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/MediaType;->PICTURE:Lcom/liquable/nemo/android/service/MediaType;

    .line 7
    new-instance v0, Lcom/liquable/nemo/android/service/MediaType;

    const-string/jumbo v1, "AUDIO"

    const-string/jumbo v2, "cubie_audio"

    invoke-direct {v0, v1, v5, v2}, Lcom/liquable/nemo/android/service/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/MediaType;->AUDIO:Lcom/liquable/nemo/android/service/MediaType;

    .line 8
    new-instance v0, Lcom/liquable/nemo/android/service/MediaType;

    const-string/jumbo v1, "USERICON"

    const-string/jumbo v2, "cubie_icon"

    invoke-direct {v0, v1, v6, v2}, Lcom/liquable/nemo/android/service/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/MediaType;->USERICON:Lcom/liquable/nemo/android/service/MediaType;

    .line 9
    new-instance v0, Lcom/liquable/nemo/android/service/MediaType;

    const-string/jumbo v1, "COVER"

    const-string/jumbo v2, "temp"

    invoke-direct {v0, v1, v7, v2}, Lcom/liquable/nemo/android/service/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/MediaType;->COVER:Lcom/liquable/nemo/android/service/MediaType;

    .line 10
    new-instance v0, Lcom/liquable/nemo/android/service/MediaType;

    const-string/jumbo v1, "SECRET_PICTURE"

    const-string/jumbo v2, "temp"

    invoke-direct {v0, v1, v8, v2}, Lcom/liquable/nemo/android/service/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/MediaType;->SECRET_PICTURE:Lcom/liquable/nemo/android/service/MediaType;

    .line 11
    new-instance v0, Lcom/liquable/nemo/android/service/MediaType;

    const-string/jumbo v1, "VIDEO"

    const/4 v2, 0x5

    const-string/jumbo v3, "cubie_video"

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/android/service/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/MediaType;->VIDEO:Lcom/liquable/nemo/android/service/MediaType;

    .line 12
    new-instance v0, Lcom/liquable/nemo/android/service/MediaType;

    const-string/jumbo v1, "PAINT"

    const/4 v2, 0x6

    const-string/jumbo v3, "cubie_paint"

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/android/service/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/MediaType;->PAINT:Lcom/liquable/nemo/android/service/MediaType;

    .line 13
    new-instance v0, Lcom/liquable/nemo/android/service/MediaType;

    const-string/jumbo v1, "MAP"

    const/4 v2, 0x7

    const-string/jumbo v3, "map"

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/android/service/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/MediaType;->MAP:Lcom/liquable/nemo/android/service/MediaType;

    .line 14
    new-instance v0, Lcom/liquable/nemo/android/service/MediaType;

    const-string/jumbo v1, "VOICE"

    const/16 v2, 0x8

    const-string/jumbo v3, "cubie_voice"

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/android/service/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/MediaType;->VOICE:Lcom/liquable/nemo/android/service/MediaType;

    .line 15
    new-instance v0, Lcom/liquable/nemo/android/service/MediaType;

    const-string/jumbo v1, "VOID"

    const/16 v2, 0x9

    const-string/jumbo v3, "cubie_void"

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/android/service/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/MediaType;->VOID:Lcom/liquable/nemo/android/service/MediaType;

    .line 16
    new-instance v0, Lcom/liquable/nemo/android/service/MediaType;

    const-string/jumbo v1, "PICTURE_THUMBNAIL"

    const/16 v2, 0xa

    const-string/jumbo v3, "cubie_picture/s"

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/android/service/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/MediaType;->PICTURE_THUMBNAIL:Lcom/liquable/nemo/android/service/MediaType;

    .line 17
    new-instance v0, Lcom/liquable/nemo/android/service/MediaType;

    const-string/jumbo v1, "VIDEO_THUMBNAIL"

    const/16 v2, 0xb

    const-string/jumbo v3, "cubie_video/s"

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/android/service/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/MediaType;->VIDEO_THUMBNAIL:Lcom/liquable/nemo/android/service/MediaType;

    .line 18
    new-instance v0, Lcom/liquable/nemo/android/service/MediaType;

    const-string/jumbo v1, "AUDIO_THUMBNAIL"

    const/16 v2, 0xc

    const-string/jumbo v3, "cubie_audio/s"

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/android/service/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/MediaType;->AUDIO_THUMBNAIL:Lcom/liquable/nemo/android/service/MediaType;

    .line 19
    new-instance v0, Lcom/liquable/nemo/android/service/MediaType;

    const-string/jumbo v1, "PAINT_CACHE"

    const/16 v2, 0xd

    const-string/jumbo v3, "cubie_paint/s"

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/android/service/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/MediaType;->PAINT_CACHE:Lcom/liquable/nemo/android/service/MediaType;

    .line 5
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/liquable/nemo/android/service/MediaType;

    sget-object v1, Lcom/liquable/nemo/android/service/MediaType;->PICTURE:Lcom/liquable/nemo/android/service/MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/android/service/MediaType;->AUDIO:Lcom/liquable/nemo/android/service/MediaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/android/service/MediaType;->USERICON:Lcom/liquable/nemo/android/service/MediaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/android/service/MediaType;->COVER:Lcom/liquable/nemo/android/service/MediaType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/liquable/nemo/android/service/MediaType;->SECRET_PICTURE:Lcom/liquable/nemo/android/service/MediaType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/android/service/MediaType;->VIDEO:Lcom/liquable/nemo/android/service/MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/android/service/MediaType;->PAINT:Lcom/liquable/nemo/android/service/MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/nemo/android/service/MediaType;->MAP:Lcom/liquable/nemo/android/service/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/nemo/android/service/MediaType;->VOICE:Lcom/liquable/nemo/android/service/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/liquable/nemo/android/service/MediaType;->VOID:Lcom/liquable/nemo/android/service/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/liquable/nemo/android/service/MediaType;->PICTURE_THUMBNAIL:Lcom/liquable/nemo/android/service/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/liquable/nemo/android/service/MediaType;->VIDEO_THUMBNAIL:Lcom/liquable/nemo/android/service/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/liquable/nemo/android/service/MediaType;->AUDIO_THUMBNAIL:Lcom/liquable/nemo/android/service/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/liquable/nemo/android/service/MediaType;->PAINT_CACHE:Lcom/liquable/nemo/android/service/MediaType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/android/service/MediaType;->$VALUES:[Lcom/liquable/nemo/android/service/MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "localPreserveFolder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/liquable/nemo/android/service/MediaType;->localPreserveFolder:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/android/service/MediaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/liquable/nemo/android/service/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/service/MediaType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/android/service/MediaType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/liquable/nemo/android/service/MediaType;->$VALUES:[Lcom/liquable/nemo/android/service/MediaType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/android/service/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/android/service/MediaType;

    return-object v0
.end method


# virtual methods
.method public getLocalPreserveFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/liquable/nemo/android/service/MediaType;->localPreserveFolder:Ljava/lang/String;

    return-object v0
.end method
