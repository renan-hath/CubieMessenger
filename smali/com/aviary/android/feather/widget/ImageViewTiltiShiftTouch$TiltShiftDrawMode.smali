.class public final enum Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;
.super Ljava/lang/Enum;
.source "ImageViewTiltiShiftTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TiltShiftDrawMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

.field public static final enum Linear:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

.field public static final enum None:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

.field public static final enum Radial:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    const-string/jumbo v1, "Radial"

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;->Radial:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    new-instance v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    const-string/jumbo v1, "Linear"

    invoke-direct {v0, v1, v3}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;->Linear:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    new-instance v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v4}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;->None:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    sget-object v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;->Radial:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;->Linear:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;->None:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;->$VALUES:[Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    return-object v0
.end method

.method public static values()[Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;->$VALUES:[Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    invoke-virtual {v0}, [Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    return-object v0
.end method
