.class Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"

# interfaces
.implements Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ScrollerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollerCompatImplGingerbread"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortAnimation(Ljava/lang/Object;)V
    .locals 0
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 201
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->abortAnimation(Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public computeScrollOffset(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 171
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->computeScrollOffset(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCurrX(Ljava/lang/Object;)I
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 156
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->getCurrX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCurrY(Ljava/lang/Object;)I
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 161
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->getCurrY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFinalX(Ljava/lang/Object;)I
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 222
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->getFinalX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFinalY(Ljava/lang/Object;)I
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 227
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->getFinalY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 151
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->isFinished(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public startScroll(Ljava/lang/Object;IIIII)V
    .locals 0
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "duration"    # I

    .prologue
    .line 182
    invoke-static/range {p1 .. p6}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->startScroll(Ljava/lang/Object;IIIII)V

    .line 183
    return-void
.end method
