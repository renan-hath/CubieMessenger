.class public final enum Lcom/aviary/android/feather/library/services/PluginService$StickerType;
.super Ljava/lang/Enum;
.source "PluginService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/services/PluginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StickerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aviary/android/feather/library/services/PluginService$StickerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/aviary/android/feather/library/services/PluginService$StickerType;

.field public static final enum Large:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

.field public static final enum Preview:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

.field public static final enum Small:Lcom/aviary/android/feather/library/services/PluginService$StickerType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    const-string/jumbo v1, "Small"

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/library/services/PluginService$StickerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->Small:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    new-instance v0, Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    const-string/jumbo v1, "Large"

    invoke-direct {v0, v1, v3}, Lcom/aviary/android/feather/library/services/PluginService$StickerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->Large:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    new-instance v0, Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    const-string/jumbo v1, "Preview"

    invoke-direct {v0, v1, v4}, Lcom/aviary/android/feather/library/services/PluginService$StickerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->Preview:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    sget-object v1, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->Small:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->Large:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->Preview:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->ENUM$VALUES:[Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aviary/android/feather/library/services/PluginService$StickerType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    return-object v0
.end method

.method public static values()[Lcom/aviary/android/feather/library/services/PluginService$StickerType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->ENUM$VALUES:[Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    array-length v1, v0

    new-array v2, v1, [Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
