.class final enum Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;
.super Ljava/lang/Enum;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/crop/HighlightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ModifyMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

.field public static final enum Grow:Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

.field public static final enum Move:Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

.field public static final enum None:Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;->None:Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

    new-instance v0, Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

    const-string/jumbo v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;->Move:Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

    new-instance v0, Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

    const-string/jumbo v1, "Grow"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;->Grow:Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

    sget-object v1, Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;->None:Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;->Move:Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;->Grow:Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;->$VALUES:[Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;->$VALUES:[Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

    invoke-virtual {v0}, [Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

    return-object v0
.end method
