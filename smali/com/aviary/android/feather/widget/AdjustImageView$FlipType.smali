.class public final enum Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;
.super Ljava/lang/Enum;
.source "AdjustImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/AdjustImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlipType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

.field public static final enum FLIP_HORIZONTAL:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

.field public static final enum FLIP_NONE:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

.field public static final enum FLIP_VERTICAL:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;


# instance fields
.field public final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2106
    new-instance v0, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    const-string/jumbo v1, "FLIP_NONE"

    invoke-direct {v0, v1, v5, v3}, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_NONE:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    new-instance v0, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    const-string/jumbo v1, "FLIP_HORIZONTAL"

    invoke-direct {v0, v1, v3, v4}, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_HORIZONTAL:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    new-instance v0, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    const-string/jumbo v1, "FLIP_VERTICAL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_VERTICAL:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    .line 2104
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    sget-object v1, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_NONE:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_HORIZONTAL:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_VERTICAL:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->$VALUES:[Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "ni"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 2108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2109
    iput p3, p0, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->nativeInt:I

    .line 2110
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2104
    const-class v0, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    return-object v0
.end method

.method public static values()[Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;
    .locals 1

    .prologue
    .line 2104
    sget-object v0, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->$VALUES:[Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    invoke-virtual {v0}, [Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    return-object v0
.end method
