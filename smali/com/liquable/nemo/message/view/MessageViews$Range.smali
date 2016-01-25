.class Lcom/liquable/nemo/message/view/MessageViews$Range;
.super Ljava/lang/Object;
.source "MessageViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/message/view/MessageViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Range"
.end annotation


# instance fields
.field public final end:I

.field public final start:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/liquable/nemo/message/view/MessageViews$Range;->start:I

    .line 25
    iput p2, p0, Lcom/liquable/nemo/message/view/MessageViews$Range;->end:I

    .line 26
    return-void
.end method

.method synthetic constructor <init>(IILcom/liquable/nemo/message/view/MessageViews$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/liquable/nemo/message/view/MessageViews$1;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/message/view/MessageViews$Range;-><init>(II)V

    return-void
.end method
