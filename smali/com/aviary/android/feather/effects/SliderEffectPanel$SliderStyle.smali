.class final enum Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;
.super Ljava/lang/Enum;
.source "SliderEffectPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/SliderEffectPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SliderStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

.field public static final enum SeekBarStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

.field public static final enum WheelStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    const-string/jumbo v1, "SeekBarStyle"

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;->SeekBarStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    new-instance v0, Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    const-string/jumbo v1, "WheelStyle"

    invoke-direct {v0, v1, v3}, Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;->WheelStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    sget-object v1, Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;->SeekBarStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;->WheelStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;->$VALUES:[Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    return-object v0
.end method

.method public static values()[Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;->$VALUES:[Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    invoke-virtual {v0}, [Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    return-object v0
.end method
