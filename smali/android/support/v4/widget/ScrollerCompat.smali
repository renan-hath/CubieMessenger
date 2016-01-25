.class public Landroid/support/v4/widget/ScrollerCompat;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;,
        Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;,
        Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplBase;,
        Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;


# instance fields
.field mScroller:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 241
    .local v0, "version":I
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 242
    new-instance v1, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;

    invoke-direct {v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;-><init>()V

    sput-object v1, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    .line 248
    :goto_0
    return-void

    .line 243
    :cond_0
    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 244
    new-instance v1, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;

    invoke-direct {v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;-><init>()V

    sput-object v1, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    goto :goto_0

    .line 246
    :cond_1
    new-instance v1, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplBase;

    invoke-direct {v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplBase;-><init>()V

    sput-object v1, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 2

    .prologue
    .line 419
    sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->abortAnimation(Ljava/lang/Object;)V

    .line 420
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 2

    .prologue
    .line 323
    sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->computeScrollOffset(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCurrX()I
    .locals 2

    .prologue
    .line 277
    sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getCurrX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCurrY()I
    .locals 2

    .prologue
    .line 286
    sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getCurrY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFinalX()I
    .locals 2

    .prologue
    .line 293
    sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getFinalX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFinalY()I
    .locals 2

    .prologue
    .line 300
    sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getFinalY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    .line 268
    sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->isFinished(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public startScroll(IIIII)V
    .locals 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 358
    sget-object v0, Landroid/support/v4/widget/ScrollerCompat;->IMPL:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->startScroll(Ljava/lang/Object;IIIII)V

    .line 359
    return-void
.end method
