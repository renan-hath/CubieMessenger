.class public final enum Lnet/londatiga/android/QuickAction$Orientation;
.super Ljava/lang/Enum;
.source "QuickAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/londatiga/android/QuickAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/londatiga/android/QuickAction$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/londatiga/android/QuickAction$Orientation;

.field public static final enum HORIZONTAL:Lnet/londatiga/android/QuickAction$Orientation;

.field public static final enum VERTICAL:Lnet/londatiga/android/QuickAction$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lnet/londatiga/android/QuickAction$Orientation;

    const-string/jumbo v1, "HORIZONTAL"

    invoke-direct {v0, v1, v2}, Lnet/londatiga/android/QuickAction$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/londatiga/android/QuickAction$Orientation;->HORIZONTAL:Lnet/londatiga/android/QuickAction$Orientation;

    new-instance v0, Lnet/londatiga/android/QuickAction$Orientation;

    const-string/jumbo v1, "VERTICAL"

    invoke-direct {v0, v1, v3}, Lnet/londatiga/android/QuickAction$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/londatiga/android/QuickAction$Orientation;->VERTICAL:Lnet/londatiga/android/QuickAction$Orientation;

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Lnet/londatiga/android/QuickAction$Orientation;

    sget-object v1, Lnet/londatiga/android/QuickAction$Orientation;->HORIZONTAL:Lnet/londatiga/android/QuickAction$Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lnet/londatiga/android/QuickAction$Orientation;->VERTICAL:Lnet/londatiga/android/QuickAction$Orientation;

    aput-object v1, v0, v3

    sput-object v0, Lnet/londatiga/android/QuickAction$Orientation;->$VALUES:[Lnet/londatiga/android/QuickAction$Orientation;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/londatiga/android/QuickAction$Orientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lnet/londatiga/android/QuickAction$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/londatiga/android/QuickAction$Orientation;

    return-object v0
.end method

.method public static values()[Lnet/londatiga/android/QuickAction$Orientation;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lnet/londatiga/android/QuickAction$Orientation;->$VALUES:[Lnet/londatiga/android/QuickAction$Orientation;

    invoke-virtual {v0}, [Lnet/londatiga/android/QuickAction$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/londatiga/android/QuickAction$Orientation;

    return-object v0
.end method
