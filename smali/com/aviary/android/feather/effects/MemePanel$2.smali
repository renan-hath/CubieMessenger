.class Lcom/aviary/android/feather/effects/MemePanel$2;
.super Lcom/aviary/android/feather/effects/MemePanel$MyTextWatcher;
.source "MemePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/MemePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/effects/MemePanel;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/MemePanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/MemePanel;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/aviary/android/feather/effects/MemePanel$2;->this$0:Lcom/aviary/android/feather/effects/MemePanel;

    invoke-direct {p0, p1}, Lcom/aviary/android/feather/effects/MemePanel$MyTextWatcher;-><init>(Lcom/aviary/android/feather/effects/MemePanel;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 412
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 416
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 421
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel$2;->this$0:Lcom/aviary/android/feather/effects/MemePanel;

    iget-object v3, v3, Lcom/aviary/android/feather/effects/MemePanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "onTextChanged"

    aput-object v5, v4, v1

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/aviary/android/feather/effects/MemePanel$2;->view:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 423
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel$2;->view:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel$2;->view:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v3

    instance-of v3, v3, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    if-eqz v3, :cond_0

    .line 424
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel$2;->view:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    .line 426
    .local v0, "editable":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    invoke-interface {v0}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->isEditing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 445
    .end local v0    # "editable":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    :cond_0
    :goto_0
    return-void

    .line 428
    .restart local v0    # "editable":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->setText(Ljava/lang/String;)V

    .line 430
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel$2;->view:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    iget-object v4, p0, Lcom/aviary/android/feather/effects/MemePanel$2;->this$0:Lcom/aviary/android/feather/effects/MemePanel;

    iget-object v4, v4, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 431
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel$2;->this$0:Lcom/aviary/android/feather/effects/MemePanel;

    iget-object v3, v3, Lcom/aviary/android/feather/effects/MemePanel;->editTopButton:Lcom/aviary/android/feather/widget/AviaryButton;

    invoke-virtual {v3, p1}, Lcom/aviary/android/feather/widget/AviaryButton;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel$2;->this$0:Lcom/aviary/android/feather/effects/MemePanel;

    iget-object v3, v3, Lcom/aviary/android/feather/effects/MemePanel;->clearButtonTop:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_4

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 438
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel$2;->view:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->forceUpdate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 439
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel$2;->this$0:Lcom/aviary/android/feather/effects/MemePanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/MemePanel$2;->view:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getInvalidationRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate(Landroid/graphics/Rect;)V

    .line 442
    :cond_3
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel$2;->this$0:Lcom/aviary/android/feather/effects/MemePanel;

    # invokes: Lcom/aviary/android/feather/effects/MemePanel;->checkIsChanged()V
    invoke-static {v1}, Lcom/aviary/android/feather/effects/MemePanel;->access$000(Lcom/aviary/android/feather/effects/MemePanel;)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 432
    goto :goto_1

    .line 433
    :cond_5
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel$2;->view:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    iget-object v4, p0, Lcom/aviary/android/feather/effects/MemePanel$2;->this$0:Lcom/aviary/android/feather/effects/MemePanel;

    iget-object v4, v4, Lcom/aviary/android/feather/effects/MemePanel;->bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 434
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel$2;->this$0:Lcom/aviary/android/feather/effects/MemePanel;

    iget-object v3, v3, Lcom/aviary/android/feather/effects/MemePanel;->editBottomButton:Lcom/aviary/android/feather/widget/AviaryButton;

    invoke-virtual {v3, p1}, Lcom/aviary/android/feather/widget/AviaryButton;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel$2;->this$0:Lcom/aviary/android/feather/effects/MemePanel;

    iget-object v3, v3, Lcom/aviary/android/feather/effects/MemePanel;->clearButtonBottom:Landroid/view/View;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_6

    :goto_3
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_3
.end method
