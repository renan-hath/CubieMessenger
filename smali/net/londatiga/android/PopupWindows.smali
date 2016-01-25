.class public Lnet/londatiga/android/PopupWindows;
.super Ljava/lang/Object;
.source "PopupWindows.java"


# instance fields
.field private final consumeOutsideTouchableEvent:Z

.field protected mBackground:Landroid/graphics/drawable/Drawable;

.field protected mContext:Landroid/content/Context;

.field protected mRootView:Landroid/view/View;

.field protected mWindow:Landroid/widget/PopupWindow;

.field protected mWindowManager:Landroid/view/WindowManager;

.field private final sameWidthAsAnchor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/londatiga/android/PopupWindows;-><init>(Landroid/content/Context;ZZ)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "consumeOutsideTouchableEvent"    # Z
    .param p3, "sameWidthAsAnchor"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/londatiga/android/PopupWindows;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 42
    iput-object p1, p0, Lnet/londatiga/android/PopupWindows;->mContext:Landroid/content/Context;

    .line 43
    iput-boolean p2, p0, Lnet/londatiga/android/PopupWindows;->consumeOutsideTouchableEvent:Z

    .line 44
    iput-boolean p3, p0, Lnet/londatiga/android/PopupWindows;->sameWidthAsAnchor:Z

    .line 46
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    .line 47
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lnet/londatiga/android/PopupWindows$1;

    invoke-direct {v1, p0, p2}, Lnet/londatiga/android/PopupWindows$1;-><init>(Lnet/londatiga/android/PopupWindows;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 59
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindowManager:Landroid/view/WindowManager;

    .line 60
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 67
    return-void
.end method

.method protected final isSameWidthAsAnchor()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lnet/londatiga/android/PopupWindows;->sameWidthAsAnchor:Z

    return v0
.end method

.method protected onDismiss()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method protected preShow(Landroid/view/View;)V
    .locals 4
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 89
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setContentView was not called with a view to display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lnet/londatiga/android/PopupWindows;->onShow()V

    .line 95
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :goto_0
    iget-boolean v0, p0, Lnet/londatiga/android/PopupWindows;->sameWidthAsAnchor:Z

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 106
    :goto_1
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 107
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 108
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lnet/londatiga/android/PopupWindows;->consumeOutsideTouchableEvent:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 109
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 111
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lnet/londatiga/android/PopupWindows;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 112
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lnet/londatiga/android/PopupWindows;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 121
    iput-object p1, p0, Lnet/londatiga/android/PopupWindows;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 122
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .prologue
    .line 131
    iget-object v1, p0, Lnet/londatiga/android/PopupWindows;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 133
    .local v0, "inflator":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/londatiga/android/PopupWindows;->setContentView(Landroid/view/View;)V

    .line 134
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 143
    iput-object p1, p0, Lnet/londatiga/android/PopupWindows;->mRootView:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 146
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 154
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 155
    return-void
.end method
