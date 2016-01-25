.class public final enum Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;
.super Ljava/lang/Enum;
.source "ImageViewSpotDraw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/ImageViewSpotDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

.field public static final enum DRAW:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

.field public static final enum IMAGE:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    const-string/jumbo v1, "IMAGE"

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->IMAGE:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    .line 22
    new-instance v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    const-string/jumbo v1, "DRAW"

    invoke-direct {v0, v1, v3}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->DRAW:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    sget-object v1, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->IMAGE:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->DRAW:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->$VALUES:[Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    return-object v0
.end method

.method public static values()[Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->$VALUES:[Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    invoke-virtual {v0}, [Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    return-object v0
.end method
