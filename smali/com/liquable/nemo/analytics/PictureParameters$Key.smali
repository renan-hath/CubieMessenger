.class public final enum Lcom/liquable/nemo/analytics/PictureParameters$Key;
.super Ljava/lang/Enum;
.source "PictureParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/analytics/PictureParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/analytics/PictureParameters$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/analytics/PictureParameters$Key;

.field public static final enum facing:Lcom/liquable/nemo/analytics/PictureParameters$Key;

.field public static final enum num_paint_sticker:Lcom/liquable/nemo/analytics/PictureParameters$Key;

.field public static final enum num_paint_text:Lcom/liquable/nemo/analytics/PictureParameters$Key;

.field public static final enum use_native_camera:Lcom/liquable/nemo/analytics/PictureParameters$Key;

.field public static final enum with_effect:Lcom/liquable/nemo/analytics/PictureParameters$Key;

.field public static final enum with_paint:Lcom/liquable/nemo/analytics/PictureParameters$Key;

.field public static final enum with_text:Lcom/liquable/nemo/analytics/PictureParameters$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;

    const-string/jumbo v1, "facing"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/analytics/PictureParameters$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;->facing:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    new-instance v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;

    const-string/jumbo v1, "num_paint_text"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/analytics/PictureParameters$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;->num_paint_text:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    new-instance v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;

    const-string/jumbo v1, "num_paint_sticker"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/analytics/PictureParameters$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;->num_paint_sticker:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    new-instance v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;

    const-string/jumbo v1, "with_paint"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/analytics/PictureParameters$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;->with_paint:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    new-instance v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;

    const-string/jumbo v1, "with_text"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/analytics/PictureParameters$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;->with_text:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    new-instance v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;

    const-string/jumbo v1, "with_effect"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/analytics/PictureParameters$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;->with_effect:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    .line 13
    new-instance v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;

    const-string/jumbo v1, "use_native_camera"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/analytics/PictureParameters$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;->use_native_camera:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    .line 11
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/liquable/nemo/analytics/PictureParameters$Key;

    sget-object v1, Lcom/liquable/nemo/analytics/PictureParameters$Key;->facing:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/analytics/PictureParameters$Key;->num_paint_text:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/analytics/PictureParameters$Key;->num_paint_sticker:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/analytics/PictureParameters$Key;->with_paint:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/analytics/PictureParameters$Key;->with_text:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/analytics/PictureParameters$Key;->with_effect:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/analytics/PictureParameters$Key;->use_native_camera:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;->$VALUES:[Lcom/liquable/nemo/analytics/PictureParameters$Key;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/analytics/PictureParameters$Key;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/analytics/PictureParameters$Key;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;->$VALUES:[Lcom/liquable/nemo/analytics/PictureParameters$Key;

    invoke-virtual {v0}, [Lcom/liquable/nemo/analytics/PictureParameters$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/analytics/PictureParameters$Key;

    return-object v0
.end method
