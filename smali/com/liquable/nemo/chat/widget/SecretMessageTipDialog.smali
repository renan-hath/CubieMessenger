.class public Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;
.super Lnet/londatiga/android/PopupWindows;
.source "SecretMessageTipDialog.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private dialogView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "consumeOutsideTouchableEvent"    # Z
    .param p3, "sameWidthAsAnchor"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lnet/londatiga/android/PopupWindows;-><init>(Landroid/content/Context;ZZ)V

    .line 25
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;->context:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method protected preShow(Landroid/view/View;)V
    .locals 4
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 30
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 31
    .local v0, "factory":Landroid/view/LayoutInflater;
    const v1, 0x7f03015f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;->dialogView:Landroid/view/View;

    .line 32
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;->dialogView:Landroid/view/View;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 33
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 32
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 35
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;->dialogView:Landroid/view/View;

    const v2, 0x7f08033f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;->context:Landroid/content/Context;

    const v3, 0x7f0d0461

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;->dialogView:Landroid/view/View;

    new-instance v2, Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog$1;-><init>(Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 44
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;->dialogView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;->setContentView(Landroid/view/View;)V

    .line 45
    invoke-super {p0, p1}, Lnet/londatiga/android/PopupWindows;->preShow(Landroid/view/View;)V

    .line 46
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 49
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;->preShow(Landroid/view/View;)V

    .line 50
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 51
    .local v2, "location":[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 52
    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;->dialogView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 53
    .local v3, "width":I
    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;->dialogView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 54
    .local v1, "height":I
    new-instance v0, Landroid/graphics/Rect;

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v9

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v2, v8

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 58
    .local v0, "anchorRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;->mWindow:Landroid/widget/PopupWindow;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int v6, v3, v6

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v1

    .line 58
    invoke-virtual {v4, p1, v9, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 62
    return-void
.end method
