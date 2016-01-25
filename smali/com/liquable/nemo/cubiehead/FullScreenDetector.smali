.class public Lcom/liquable/nemo/cubiehead/FullScreenDetector;
.super Landroid/widget/RelativeLayout;
.source "FullScreenDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/cubiehead/FullScreenDetector$OnFullScreenListener;,
        Lcom/liquable/nemo/cubiehead/FullScreenDetector$FullScreenListner;
    }
.end annotation


# instance fields
.field private OnFullScreenListener:Lcom/liquable/nemo/cubiehead/FullScreenDetector$OnFullScreenListener;

.field private isFullScreen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private onFSChanged()V
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/FullScreenDetector;->OnFullScreenListener:Lcom/liquable/nemo/cubiehead/FullScreenDetector$OnFullScreenListener;

    if-eqz v1, :cond_0

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 70
    .local v0, "dim":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/cubiehead/FullScreenDetector;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 71
    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_1

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/cubiehead/FullScreenDetector;->isFullScreen:Z

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/FullScreenDetector;->OnFullScreenListener:Lcom/liquable/nemo/cubiehead/FullScreenDetector$OnFullScreenListener;

    invoke-virtual {p0}, Lcom/liquable/nemo/cubiehead/FullScreenDetector;->getFS()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/liquable/nemo/cubiehead/FullScreenDetector$OnFullScreenListener;->fsChanged(Z)V

    .line 78
    .end local v0    # "dim":Landroid/graphics/Rect;
    :cond_0
    return-void

    .line 74
    .restart local v0    # "dim":Landroid/graphics/Rect;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/liquable/nemo/cubiehead/FullScreenDetector;->isFullScreen:Z

    goto :goto_0
.end method

.method public static registerFullScreenListener(Landroid/content/Context;Landroid/view/WindowManager;Lcom/liquable/nemo/cubiehead/FullScreenDetector$FullScreenListner;)Lcom/liquable/nemo/cubiehead/FullScreenDetector;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wm"    # Landroid/view/WindowManager;
    .param p2, "listener"    # Lcom/liquable/nemo/cubiehead/FullScreenDetector$FullScreenListner;

    .prologue
    .line 25
    new-instance v6, Lcom/liquable/nemo/cubiehead/FullScreenDetector;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/cubiehead/FullScreenDetector;-><init>(Landroid/content/Context;)V

    .line 26
    .local v6, "detector":Lcom/liquable/nemo/cubiehead/FullScreenDetector;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/16 v3, 0x7d6

    const/16 v4, 0x8

    const/4 v5, -0x2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 31
    .local v0, "paramtester":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 32
    invoke-interface {p1, v6, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    new-instance v1, Lcom/liquable/nemo/cubiehead/FullScreenDetector$1;

    invoke-direct {v1, p2}, Lcom/liquable/nemo/cubiehead/FullScreenDetector$1;-><init>(Lcom/liquable/nemo/cubiehead/FullScreenDetector$FullScreenListner;)V

    invoke-virtual {v6, v1}, Lcom/liquable/nemo/cubiehead/FullScreenDetector;->setOnFullScreenListener(Lcom/liquable/nemo/cubiehead/FullScreenDetector$OnFullScreenListener;)V

    .line 44
    return-object v6
.end method


# virtual methods
.method public destroy(Landroid/view/ViewManager;)V
    .locals 0
    .param p1, "windowManager"    # Landroid/view/ViewManager;

    .prologue
    .line 56
    invoke-interface {p1, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 57
    return-void
.end method

.method public getFS()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/liquable/nemo/cubiehead/FullScreenDetector;->isFullScreen:Z

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/liquable/nemo/cubiehead/FullScreenDetector;->isFullScreen:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/FullScreenDetector;->onFSChanged()V

    .line 86
    :cond_0
    return-void
.end method

.method public setOnFullScreenListener(Lcom/liquable/nemo/cubiehead/FullScreenDetector$OnFullScreenListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/liquable/nemo/cubiehead/FullScreenDetector$OnFullScreenListener;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/FullScreenDetector;->OnFullScreenListener:Lcom/liquable/nemo/cubiehead/FullScreenDetector$OnFullScreenListener;

    .line 90
    return-void
.end method
