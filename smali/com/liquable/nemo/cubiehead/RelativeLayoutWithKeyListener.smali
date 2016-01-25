.class public Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;
.super Landroid/widget/RelativeLayout;
.source "RelativeLayoutWithKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener$OnBackKeyListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener$OnBackKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 21
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;->listener:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener$OnBackKeyListener;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;->listener:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener$OnBackKeyListener;

    invoke-interface {v0}, Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener$OnBackKeyListener;->onBackKeyPressed()V

    .line 25
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setBackKeyListener(Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener$OnBackKeyListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener$OnBackKeyListener;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;->listener:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener$OnBackKeyListener;

    .line 30
    return-void
.end method
