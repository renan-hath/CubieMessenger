.class final enum Lcom/aviary/android/feather/widget/HighlightView$Mode;
.super Ljava/lang/Enum;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/HighlightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aviary/android/feather/widget/HighlightView$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aviary/android/feather/widget/HighlightView$Mode;

.field public static final enum Grow:Lcom/aviary/android/feather/widget/HighlightView$Mode;

.field public static final enum Move:Lcom/aviary/android/feather/widget/HighlightView$Mode;

.field public static final enum None:Lcom/aviary/android/feather/widget/HighlightView$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/aviary/android/feather/widget/HighlightView$Mode;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/widget/HighlightView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/widget/HighlightView$Mode;->None:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    .line 43
    new-instance v0, Lcom/aviary/android/feather/widget/HighlightView$Mode;

    const-string/jumbo v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/aviary/android/feather/widget/HighlightView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/widget/HighlightView$Mode;->Move:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    .line 44
    new-instance v0, Lcom/aviary/android/feather/widget/HighlightView$Mode;

    const-string/jumbo v1, "Grow"

    invoke-direct {v0, v1, v4}, Lcom/aviary/android/feather/widget/HighlightView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/widget/HighlightView$Mode;->Grow:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/aviary/android/feather/widget/HighlightView$Mode;

    sget-object v1, Lcom/aviary/android/feather/widget/HighlightView$Mode;->None:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aviary/android/feather/widget/HighlightView$Mode;->Move:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aviary/android/feather/widget/HighlightView$Mode;->Grow:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/aviary/android/feather/widget/HighlightView$Mode;->$VALUES:[Lcom/aviary/android/feather/widget/HighlightView$Mode;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aviary/android/feather/widget/HighlightView$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/aviary/android/feather/widget/HighlightView$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/widget/HighlightView$Mode;

    return-object v0
.end method

.method public static values()[Lcom/aviary/android/feather/widget/HighlightView$Mode;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/aviary/android/feather/widget/HighlightView$Mode;->$VALUES:[Lcom/aviary/android/feather/widget/HighlightView$Mode;

    invoke-virtual {v0}, [Lcom/aviary/android/feather/widget/HighlightView$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aviary/android/feather/widget/HighlightView$Mode;

    return-object v0
.end method
