.class public final enum Lnet/londatiga/android/QuickAction$AnimationStyle;
.super Ljava/lang/Enum;
.source "QuickAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/londatiga/android/QuickAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/londatiga/android/QuickAction$AnimationStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/londatiga/android/QuickAction$AnimationStyle;

.field public static final enum ANIM_AUTO:Lnet/londatiga/android/QuickAction$AnimationStyle;

.field public static final enum ANIM_GROW_FROM_CENTER:Lnet/londatiga/android/QuickAction$AnimationStyle;

.field public static final enum ANIM_GROW_FROM_LEFT:Lnet/londatiga/android/QuickAction$AnimationStyle;

.field public static final enum ANIM_GROW_FROM_RIGHT:Lnet/londatiga/android/QuickAction$AnimationStyle;

.field public static final enum ANIM_NO:Lnet/londatiga/android/QuickAction$AnimationStyle;

.field public static final enum ANIM_REFLECT:Lnet/londatiga/android/QuickAction$AnimationStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lnet/londatiga/android/QuickAction$AnimationStyle;

    const-string/jumbo v1, "ANIM_NO"

    invoke-direct {v0, v1, v3}, Lnet/londatiga/android/QuickAction$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/londatiga/android/QuickAction$AnimationStyle;->ANIM_NO:Lnet/londatiga/android/QuickAction$AnimationStyle;

    new-instance v0, Lnet/londatiga/android/QuickAction$AnimationStyle;

    const-string/jumbo v1, "ANIM_GROW_FROM_LEFT"

    invoke-direct {v0, v1, v4}, Lnet/londatiga/android/QuickAction$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/londatiga/android/QuickAction$AnimationStyle;->ANIM_GROW_FROM_LEFT:Lnet/londatiga/android/QuickAction$AnimationStyle;

    new-instance v0, Lnet/londatiga/android/QuickAction$AnimationStyle;

    const-string/jumbo v1, "ANIM_GROW_FROM_RIGHT"

    invoke-direct {v0, v1, v5}, Lnet/londatiga/android/QuickAction$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/londatiga/android/QuickAction$AnimationStyle;->ANIM_GROW_FROM_RIGHT:Lnet/londatiga/android/QuickAction$AnimationStyle;

    new-instance v0, Lnet/londatiga/android/QuickAction$AnimationStyle;

    const-string/jumbo v1, "ANIM_GROW_FROM_CENTER"

    invoke-direct {v0, v1, v6}, Lnet/londatiga/android/QuickAction$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/londatiga/android/QuickAction$AnimationStyle;->ANIM_GROW_FROM_CENTER:Lnet/londatiga/android/QuickAction$AnimationStyle;

    new-instance v0, Lnet/londatiga/android/QuickAction$AnimationStyle;

    const-string/jumbo v1, "ANIM_REFLECT"

    invoke-direct {v0, v1, v7}, Lnet/londatiga/android/QuickAction$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/londatiga/android/QuickAction$AnimationStyle;->ANIM_REFLECT:Lnet/londatiga/android/QuickAction$AnimationStyle;

    .line 34
    new-instance v0, Lnet/londatiga/android/QuickAction$AnimationStyle;

    const-string/jumbo v1, "ANIM_AUTO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lnet/londatiga/android/QuickAction$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/londatiga/android/QuickAction$AnimationStyle;->ANIM_AUTO:Lnet/londatiga/android/QuickAction$AnimationStyle;

    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [Lnet/londatiga/android/QuickAction$AnimationStyle;

    sget-object v1, Lnet/londatiga/android/QuickAction$AnimationStyle;->ANIM_NO:Lnet/londatiga/android/QuickAction$AnimationStyle;

    aput-object v1, v0, v3

    sget-object v1, Lnet/londatiga/android/QuickAction$AnimationStyle;->ANIM_GROW_FROM_LEFT:Lnet/londatiga/android/QuickAction$AnimationStyle;

    aput-object v1, v0, v4

    sget-object v1, Lnet/londatiga/android/QuickAction$AnimationStyle;->ANIM_GROW_FROM_RIGHT:Lnet/londatiga/android/QuickAction$AnimationStyle;

    aput-object v1, v0, v5

    sget-object v1, Lnet/londatiga/android/QuickAction$AnimationStyle;->ANIM_GROW_FROM_CENTER:Lnet/londatiga/android/QuickAction$AnimationStyle;

    aput-object v1, v0, v6

    sget-object v1, Lnet/londatiga/android/QuickAction$AnimationStyle;->ANIM_REFLECT:Lnet/londatiga/android/QuickAction$AnimationStyle;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lnet/londatiga/android/QuickAction$AnimationStyle;->ANIM_AUTO:Lnet/londatiga/android/QuickAction$AnimationStyle;

    aput-object v2, v0, v1

    sput-object v0, Lnet/londatiga/android/QuickAction$AnimationStyle;->$VALUES:[Lnet/londatiga/android/QuickAction$AnimationStyle;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/londatiga/android/QuickAction$AnimationStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lnet/londatiga/android/QuickAction$AnimationStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/londatiga/android/QuickAction$AnimationStyle;

    return-object v0
.end method

.method public static values()[Lnet/londatiga/android/QuickAction$AnimationStyle;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lnet/londatiga/android/QuickAction$AnimationStyle;->$VALUES:[Lnet/londatiga/android/QuickAction$AnimationStyle;

    invoke-virtual {v0}, [Lnet/londatiga/android/QuickAction$AnimationStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/londatiga/android/QuickAction$AnimationStyle;

    return-object v0
.end method
