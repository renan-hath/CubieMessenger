.class public final enum Lcom/liquable/nemo/android/service/ExtraFileType;
.super Ljava/lang/Enum;
.source "ExtraFileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/android/service/ExtraFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/android/service/ExtraFileType;

.field public static final enum CUSTOM_STICKER:Lcom/liquable/nemo/android/service/ExtraFileType;

.field public static final enum CUSTOM_STICKER_EFFECT:Lcom/liquable/nemo/android/service/ExtraFileType;

.field public static final enum CUSTOM_STICKER_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

.field public static final enum STICKER:Lcom/liquable/nemo/android/service/ExtraFileType;

.field public static final enum STICKER_CATEGORY_ICON:Lcom/liquable/nemo/android/service/ExtraFileType;

.field public static final enum STICKER_CATEGORY_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

.field public static final enum STICKER_ITEM_SAMPLE:Lcom/liquable/nemo/android/service/ExtraFileType;

.field public static final enum STICKER_ITEM_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

.field public static final enum STICKER_PACKAGE:Lcom/liquable/nemo/android/service/ExtraFileType;

.field public static final enum STICKER_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

.field public static final enum WALLPAPER:Lcom/liquable/nemo/android/service/ExtraFileType;


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

    .line 4
    new-instance v0, Lcom/liquable/nemo/android/service/ExtraFileType;

    const-string/jumbo v1, "STICKER"

    const-string/jumbo v2, "sticker"

    invoke-direct {v0, v1, v4, v2}, Lcom/liquable/nemo/android/service/ExtraFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER:Lcom/liquable/nemo/android/service/ExtraFileType;

    .line 5
    new-instance v0, Lcom/liquable/nemo/android/service/ExtraFileType;

    const-string/jumbo v1, "STICKER_PACKAGE"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v5, v2}, Lcom/liquable/nemo/android/service/ExtraFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_PACKAGE:Lcom/liquable/nemo/android/service/ExtraFileType;

    .line 6
    new-instance v0, Lcom/liquable/nemo/android/service/ExtraFileType;

    const-string/jumbo v1, "WALLPAPER"

    const-string/jumbo v2, "cubie_wallpaper"

    invoke-direct {v0, v1, v6, v2}, Lcom/liquable/nemo/android/service/ExtraFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/ExtraFileType;->WALLPAPER:Lcom/liquable/nemo/android/service/ExtraFileType;

    .line 7
    new-instance v0, Lcom/liquable/nemo/android/service/ExtraFileType;

    const-string/jumbo v1, "STICKER_CATEGORY_ICON"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v7, v2}, Lcom/liquable/nemo/android/service/ExtraFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_CATEGORY_ICON:Lcom/liquable/nemo/android/service/ExtraFileType;

    .line 8
    new-instance v0, Lcom/liquable/nemo/android/service/ExtraFileType;

    const-string/jumbo v1, "STICKER_THUMBNAIL"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v8, v2}, Lcom/liquable/nemo/android/service/ExtraFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    .line 9
    new-instance v0, Lcom/liquable/nemo/android/service/ExtraFileType;

    const-string/jumbo v1, "STICKER_ITEM_THUMBNAIL"

    const/4 v2, 0x5

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/android/service/ExtraFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_ITEM_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    .line 10
    new-instance v0, Lcom/liquable/nemo/android/service/ExtraFileType;

    const-string/jumbo v1, "STICKER_ITEM_SAMPLE"

    const/4 v2, 0x6

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/android/service/ExtraFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_ITEM_SAMPLE:Lcom/liquable/nemo/android/service/ExtraFileType;

    .line 11
    new-instance v0, Lcom/liquable/nemo/android/service/ExtraFileType;

    const-string/jumbo v1, "STICKER_CATEGORY_THUMBNAIL"

    const/4 v2, 0x7

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/android/service/ExtraFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_CATEGORY_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    .line 12
    new-instance v0, Lcom/liquable/nemo/android/service/ExtraFileType;

    const-string/jumbo v1, "CUSTOM_STICKER"

    const/16 v2, 0x8

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/android/service/ExtraFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/ExtraFileType;->CUSTOM_STICKER:Lcom/liquable/nemo/android/service/ExtraFileType;

    .line 13
    new-instance v0, Lcom/liquable/nemo/android/service/ExtraFileType;

    const-string/jumbo v1, "CUSTOM_STICKER_EFFECT"

    const/16 v2, 0x9

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/android/service/ExtraFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/ExtraFileType;->CUSTOM_STICKER_EFFECT:Lcom/liquable/nemo/android/service/ExtraFileType;

    .line 14
    new-instance v0, Lcom/liquable/nemo/android/service/ExtraFileType;

    const-string/jumbo v1, "CUSTOM_STICKER_THUMBNAIL"

    const/16 v2, 0xa

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/android/service/ExtraFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/android/service/ExtraFileType;->CUSTOM_STICKER_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    .line 3
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/liquable/nemo/android/service/ExtraFileType;

    sget-object v1, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER:Lcom/liquable/nemo/android/service/ExtraFileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_PACKAGE:Lcom/liquable/nemo/android/service/ExtraFileType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/android/service/ExtraFileType;->WALLPAPER:Lcom/liquable/nemo/android/service/ExtraFileType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_CATEGORY_ICON:Lcom/liquable/nemo/android/service/ExtraFileType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_ITEM_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_ITEM_SAMPLE:Lcom/liquable/nemo/android/service/ExtraFileType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_CATEGORY_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/nemo/android/service/ExtraFileType;->CUSTOM_STICKER:Lcom/liquable/nemo/android/service/ExtraFileType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/liquable/nemo/android/service/ExtraFileType;->CUSTOM_STICKER_EFFECT:Lcom/liquable/nemo/android/service/ExtraFileType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/liquable/nemo/android/service/ExtraFileType;->CUSTOM_STICKER_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/android/service/ExtraFileType;->$VALUES:[Lcom/liquable/nemo/android/service/ExtraFileType;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/liquable/nemo/android/service/ExtraFileType;->localPreserveFolder:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/android/service/ExtraFileType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/android/service/ExtraFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/service/ExtraFileType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/android/service/ExtraFileType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/android/service/ExtraFileType;->$VALUES:[Lcom/liquable/nemo/android/service/ExtraFileType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/android/service/ExtraFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/android/service/ExtraFileType;

    return-object v0
.end method


# virtual methods
.method public getLocalPreserveFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/android/service/ExtraFileType;->localPreserveFolder:Ljava/lang/String;

    return-object v0
.end method
