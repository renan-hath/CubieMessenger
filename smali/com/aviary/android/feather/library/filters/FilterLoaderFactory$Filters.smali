.class public final enum Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;
.super Ljava/lang/Enum;
.source "FilterLoaderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/filters/FilterLoaderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Filters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADJUST:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field public static final enum BLEMISH:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field public static final enum BORDERS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field public static final enum BRIGHTNESS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field public static final enum COLORTEMP:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field public static final enum COLOR_SPLASH:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field public static final enum CONTRAST:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field public static final enum CROP:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field public static final enum DRAWING:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field public static final enum EFFECTS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field public static final enum ENHANCE:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field private static final synthetic ENUM$VALUES:[Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field public static final enum MEME:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field public static final enum RED_EYE:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field public static final enum SATURATION:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field public static final enum SHARPNESS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field public static final enum STICKERS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field public static final enum TEXT:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field public static final enum TILT_SHIFT:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field public static final enum WHITEN:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v1, "SHARPNESS"

    invoke-direct {v0, v1, v3}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->SHARPNESS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    new-instance v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v1, "BRIGHTNESS"

    invoke-direct {v0, v1, v4}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->BRIGHTNESS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    new-instance v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v1, "CONTRAST"

    invoke-direct {v0, v1, v5}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->CONTRAST:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    new-instance v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v1, "SATURATION"

    invoke-direct {v0, v1, v6}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->SATURATION:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    new-instance v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v1, "EFFECTS"

    invoke-direct {v0, v1, v7}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->EFFECTS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    new-instance v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v1, "RED_EYE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->RED_EYE:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    new-instance v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v1, "CROP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->CROP:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    new-instance v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v1, "WHITEN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->WHITEN:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    new-instance v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v1, "DRAWING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->DRAWING:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    new-instance v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v1, "STICKERS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->STICKERS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    new-instance v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v1, "TEXT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->TEXT:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    new-instance v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v1, "BLEMISH"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->BLEMISH:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    new-instance v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v1, "MEME"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->MEME:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    new-instance v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v1, "ADJUST"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ADJUST:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    new-instance v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v1, "ENHANCE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ENHANCE:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    new-instance v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v1, "COLORTEMP"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->COLORTEMP:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    new-instance v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v1, "BORDERS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->BORDERS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    new-instance v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v1, "COLOR_SPLASH"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->COLOR_SPLASH:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    new-instance v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v1, "TILT_SHIFT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->TILT_SHIFT:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    .line 21
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->SHARPNESS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->BRIGHTNESS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->CONTRAST:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->SATURATION:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->EFFECTS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->RED_EYE:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->CROP:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->WHITEN:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->DRAWING:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->STICKERS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->TEXT:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->BLEMISH:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->MEME:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ADJUST:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ENHANCE:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->COLORTEMP:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->BORDERS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->COLOR_SPLASH:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->TILT_SHIFT:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ENUM$VALUES:[Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    return-object v0
.end method

.method public static values()[Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ENUM$VALUES:[Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    array-length v1, v0

    new-array v2, v1, [Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
