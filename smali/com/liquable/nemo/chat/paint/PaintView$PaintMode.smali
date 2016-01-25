.class public final enum Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;
.super Ljava/lang/Enum;
.source "PaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/paint/PaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaintMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

.field public static final enum BRUSH:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

.field public static final enum DECORATION:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

.field public static final enum ERASER:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 320
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    const-string/jumbo v1, "BRUSH"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->BRUSH:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    .line 321
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    const-string/jumbo v1, "ERASER"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->ERASER:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    .line 322
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    const-string/jumbo v1, "DECORATION"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->DECORATION:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    .line 319
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    sget-object v1, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->BRUSH:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->ERASER:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->DECORATION:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->$VALUES:[Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

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
    .line 319
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 319
    const-class v0, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->$VALUES:[Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    invoke-virtual {v0}, [Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    return-object v0
.end method
