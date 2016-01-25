.class abstract Lcom/aviary/android/feather/effects/AbstractContentPanel;
.super Lcom/aviary/android/feather/effects/AbstractOptionPanel;
.source "AbstractContentPanel.java"

# interfaces
.implements Lcom/aviary/android/feather/effects/AbstractPanel$ContentPanel;


# instance fields
.field protected mContentReadyListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnContentReadyListener;

.field protected mDrawingPanel:Landroid/view/View;

.field protected mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V
    .locals 0
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "entry"    # Lcom/aviary/android/feather/library/content/ToolEntry;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected contentReady()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractContentPanel;->mContentReadyListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnContentReadyListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractContentPanel;->mContentReadyListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnContentReadyListener;

    invoke-interface {v0, p0}, Lcom/aviary/android/feather/effects/AbstractPanel$OnContentReadyListener;->onReady(Lcom/aviary/android/feather/effects/AbstractPanel;)V

    .line 56
    :cond_0
    return-void
.end method

.method protected abstract generateContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public final getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractContentPanel;->mDrawingPanel:Landroid/view/View;

    return-object v0
.end method

.method public final getContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->generateContentView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/AbstractContentPanel;->mDrawingPanel:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractContentPanel;->mDrawingPanel:Landroid/view/View;

    return-object v0
.end method

.method protected onDispose()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/AbstractContentPanel;->mContentReadyListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnContentReadyListener;

    .line 40
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->onDispose()V

    .line 41
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->setEnabled(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 47
    return-void
.end method

.method public final setOnReadyListener(Lcom/aviary/android/feather/effects/AbstractPanel$OnContentReadyListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/effects/AbstractPanel$OnContentReadyListener;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/aviary/android/feather/effects/AbstractContentPanel;->mContentReadyListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnContentReadyListener;

    .line 24
    return-void
.end method
