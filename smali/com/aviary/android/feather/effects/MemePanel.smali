.class public Lcom/aviary/android/feather/effects/MemePanel;
.super Lcom/aviary/android/feather/effects/AbstractContentPanel;
.source "MemePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;
.implements Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/effects/MemePanel$MyTextWatcher;
    }
.end annotation


# instance fields
.field bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

.field clearButtonBottom:Landroid/view/View;

.field clearButtonTop:Landroid/view/View;

.field editBottomButton:Lcom/aviary/android/feather/widget/AviaryButton;

.field editBottomText:Landroid/widget/EditText;

.field editTopButton:Lcom/aviary/android/feather/widget/AviaryButton;

.field editTopText:Landroid/widget/EditText;

.field fontName:Ljava/lang/String;

.field mCanvas:Landroid/graphics/Canvas;

.field private final mEditTextWatcher:Lcom/aviary/android/feather/effects/MemePanel$MyTextWatcher;

.field mInputHandler:Landroid/os/Handler;

.field mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field mInputReceiver:Landroid/os/ResultReceiver;

.field mTextColor:I

.field mTextStrokeColor:I

.field mTextStrokeEnabled:Z

.field mTypeface:Landroid/graphics/Typeface;

.field paddingBottom:I

.field paddingTop:I

.field topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V
    .locals 3
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "entry"    # Lcom/aviary/android/feather/library/content/ToolEntry;

    .prologue
    const/16 v1, 0x10

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 63
    iput v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->paddingTop:I

    .line 64
    iput v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->paddingBottom:I

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mTextColor:I

    .line 66
    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mTextStrokeColor:I

    .line 67
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mTextStrokeEnabled:Z

    .line 69
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mInputHandler:Landroid/os/Handler;

    .line 70
    new-instance v1, Landroid/os/ResultReceiver;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/MemePanel;->mInputHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mInputReceiver:Landroid/os/ResultReceiver;

    .line 408
    new-instance v1, Lcom/aviary/android/feather/effects/MemePanel$2;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/effects/MemePanel$2;-><init>(Lcom/aviary/android/feather/effects/MemePanel;)V

    iput-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mEditTextWatcher:Lcom/aviary/android/feather/effects/MemePanel$MyTextWatcher;

    .line 75
    const-class v1, Lcom/aviary/android/feather/library/services/ConfigService;

    invoke-interface {p1, v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/ConfigService;

    .line 76
    .local v0, "config":Lcom/aviary/android/feather/library/services/ConfigService;
    if-eqz v0, :cond_0

    .line 77
    sget v1, Lcom/aviary/android/feather/R$string;->aviary_meme_font:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->fontName:Ljava/lang/String;

    .line 78
    sget v1, Lcom/aviary/android/feather/R$color;->aviary_meme_text_color:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mTextColor:I

    .line 79
    sget v1, Lcom/aviary/android/feather/R$color;->aviary_meme_stroke_color:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mTextStrokeColor:I

    .line 80
    sget v1, Lcom/aviary/android/feather/R$integer;->aviary_meme_stroke_enabled:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mTextStrokeEnabled:Z

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/effects/MemePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/MemePanel;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/MemePanel;->checkIsChanged()V

    return-void
.end method

.method private beginEditText(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V
    .locals 8
    .param p1, "view"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 558
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "beginEditText"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 560
    const/4 v0, 0x0

    .line 562
    .local v0, "editText":Landroid/widget/EditText;
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-ne p1, v3, :cond_4

    .line 563
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->editTopText:Landroid/widget/EditText;

    .line 568
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 569
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->mEditTextWatcher:Lcom/aviary/android/feather/effects/MemePanel$MyTextWatcher;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/aviary/android/feather/effects/MemePanel$MyTextWatcher;->view:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .line 570
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->mEditTextWatcher:Lcom/aviary/android/feather/effects/MemePanel$MyTextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 572
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    .line 573
    .local v1, "editable":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    invoke-interface {v1}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 574
    .local v2, "oldText":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 575
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 576
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 577
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 579
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/aviary/android/feather/effects/MemePanel;->mInputReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v3, v0, v6, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 580
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3, v7, v6}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 584
    :cond_1
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->mEditTextWatcher:Lcom/aviary/android/feather/effects/MemePanel$MyTextWatcher;

    iput-object p1, v3, Lcom/aviary/android/feather/effects/MemePanel$MyTextWatcher;->view:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .line 585
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 586
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->mEditTextWatcher:Lcom/aviary/android/feather/effects/MemePanel$MyTextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 588
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v3, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v3, p1}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->setSelectedHighlightView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 589
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v4

    check-cast v4, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    invoke-interface {v4}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 591
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->forceUpdate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 592
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getInvalidationRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate(Landroid/graphics/Rect;)V

    .line 595
    :cond_2
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/MemePanel;->checkIsChanged()V

    .line 597
    .end local v1    # "editable":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    .end local v2    # "oldText":Ljava/lang/String;
    :cond_3
    return-void

    .line 564
    :cond_4
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-ne p1, v3, :cond_0

    .line 565
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->editBottomText:Landroid/widget/EditText;

    goto :goto_0
.end method

.method private beginEditView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V
    .locals 5
    .param p1, "hv"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    .line 481
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "beginEditView"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 483
    if-nez p1, :cond_0

    .line 498
    :goto_0
    return-void

    .line 485
    :cond_0
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    .line 487
    .local v0, "text":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-ne p1, v1, :cond_2

    .line 488
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-direct {p0, v1}, Lcom/aviary/android/feather/effects/MemePanel;->endEditView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 493
    :goto_1
    invoke-interface {v0}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->isEditing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 494
    invoke-interface {v0}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->beginEdit()V

    .line 497
    :cond_1
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/effects/MemePanel;->beginEditText(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    goto :goto_0

    .line 490
    :cond_2
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-direct {p0, v1}, Lcom/aviary/android/feather/effects/MemePanel;->endEditView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    goto :goto_1
.end method

.method private checkIsChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 514
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/effects/MemePanel;->checkIsChanged(Lcom/aviary/android/feather/widget/DrawableHighlightView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/effects/MemePanel;->setIsChanged(Z)V

    .line 522
    :goto_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isChanged?: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/MemePanel;->getIsChanged()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 523
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/effects/MemePanel;->checkIsChanged(Lcom/aviary/android/feather/widget/DrawableHighlightView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/effects/MemePanel;->setIsChanged(Z)V

    goto :goto_0

    .line 519
    :cond_1
    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/effects/MemePanel;->setIsChanged(Z)V

    goto :goto_0
.end method

.method private checkIsChanged(Lcom/aviary/android/feather/widget/DrawableHighlightView;)Z
    .locals 3
    .param p1, "view"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    .line 527
    if-eqz p1, :cond_0

    .line 528
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    .line 529
    .local v0, "editable":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    if-eqz v0, :cond_0

    .line 530
    invoke-interface {v0}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 531
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 532
    const/4 v2, 0x1

    .line 536
    .end local v0    # "editable":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private clearEditView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V
    .locals 3
    .param p1, "hv"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    .line 501
    if-eqz p1, :cond_1

    .line 502
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;

    .line 503
    .local v0, "text":Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->setText(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->invalidateSelf()V

    .line 505
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->forceUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getInvalidationRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate(Landroid/graphics/Rect;)V

    .line 509
    :cond_0
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/MemePanel;->checkIsChanged()V

    .line 511
    .end local v0    # "text":Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;
    :cond_1
    return-void
.end method

.method private createAndConfigurePreview()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mPreview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mPreview:Landroid/graphics/Bitmap;

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/utils/BitmapUtils;->copy(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mPreview:Landroid/graphics/Bitmap;

    .line 286
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mCanvas:Landroid/graphics/Canvas;

    .line 287
    return-void
.end method

.method private createTypeFace()V
    .locals 3

    .prologue
    .line 622
    :try_start_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/MemePanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/aviary/android/feather/effects/MemePanel;->fontName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aviary/android/feather/utils/TypefaceUtils;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :goto_0
    return-void

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private endEditText(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V
    .locals 6
    .param p1, "view"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 601
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "endEditText"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 603
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mEditTextWatcher:Lcom/aviary/android/feather/effects/MemePanel$MyTextWatcher;

    iput-object v5, v1, Lcom/aviary/android/feather/effects/MemePanel$MyTextWatcher;->view:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .line 604
    const/4 v0, 0x0

    .line 606
    .local v0, "editText":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->editTopText:Landroid/widget/EditText;

    .line 609
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 610
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mEditTextWatcher:Lcom/aviary/android/feather/effects/MemePanel$MyTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 611
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 613
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 616
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 618
    :cond_2
    return-void

    .line 607
    :cond_3
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->editBottomText:Landroid/widget/EditText;

    goto :goto_0
.end method

.method private endEditView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V
    .locals 6
    .param p1, "hv"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 461
    if-nez p1, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    .line 465
    .local v0, "text":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    invoke-interface {v0}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->isEditing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 466
    invoke-interface {v0}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->endEdit()V

    .line 467
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/effects/MemePanel;->endEditText(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 470
    :cond_2
    invoke-interface {v0}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 471
    .local v1, "value":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 472
    iget-object v4, p0, Lcom/aviary/android/feather/effects/MemePanel;->editTopButton:Lcom/aviary/android/feather/widget/AviaryButton;

    invoke-virtual {v4, v1}, Lcom/aviary/android/feather/widget/AviaryButton;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v4, p0, Lcom/aviary/android/feather/effects/MemePanel;->clearButtonTop:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    .line 474
    :cond_4
    iget-object v4, p0, Lcom/aviary/android/feather/effects/MemePanel;->bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 475
    iget-object v4, p0, Lcom/aviary/android/feather/effects/MemePanel;->editBottomButton:Lcom/aviary/android/feather/widget/AviaryButton;

    invoke-virtual {v4, v1}, Lcom/aviary/android/feather/widget/AviaryButton;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v4, p0, Lcom/aviary/android/feather/effects/MemePanel;->clearButtonBottom:Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_5

    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_2
.end method

.method private flattenText(Lcom/aviary/android/feather/widget/DrawableHighlightView;Lcom/aviary/android/feather/library/filters/MemeFilter;)V
    .locals 13
    .param p1, "hv"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;
    .param p2, "filter"    # Lcom/aviary/android/feather/library/filters/MemeFilter;

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 236
    if-eqz p1, :cond_1

    .line 237
    invoke-virtual {p1, v12}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->setHidden(Z)V

    .line 241
    iget-object v7, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v7}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-static {v7}, Lcom/aviary/android/feather/library/utils/MatrixUtils;->getScale(Landroid/graphics/Matrix;)[F

    move-result-object v7

    aget v5, v7, v8

    .line 243
    .local v5, "scale":F
    iget-object v7, p0, Lcom/aviary/android/feather/effects/MemePanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 244
    .local v6, "width":I
    iget-object v7, p0, Lcom/aviary/android/feather/effects/MemePanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 246
    .local v2, "height":I
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getCropRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 247
    .local v0, "cropRect":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iget v9, v0, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    iget v10, v0, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    iget v11, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    invoke-direct {v3, v7, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 248
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;

    .line 250
    .local v1, "editable":Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;
    iget-object v7, p0, Lcom/aviary/android/feather/effects/MemePanel;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v12}, Landroid/graphics/Canvas;->save(I)I

    move-result v4

    .line 253
    .local v4, "saveCount":I
    invoke-virtual {v1}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->endEdit()V

    .line 254
    invoke-virtual {v1}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->invalidateSelf()V

    .line 256
    int-to-float v7, v6

    int-to-float v9, v2

    invoke-virtual {v1, v7, v9}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->setContentSize(FF)V

    .line 257
    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    iget v10, v3, Landroid/graphics/Rect;->right:I

    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v7, v9, v10, v11}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->setBounds(IIII)V

    .line 258
    iget-object v7, p0, Lcom/aviary/android/feather/effects/MemePanel;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v7}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 260
    invoke-virtual {p2, v6, v2}, Lcom/aviary/android/feather/library/filters/MemeFilter;->setPreviewSize(II)V

    .line 261
    invoke-virtual {v1}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->getTextColor()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/aviary/android/feather/library/filters/MemeFilter;->setFillColor(I)V

    .line 262
    invoke-virtual {v1}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->getStrokeEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->getTextStrokeColor()I

    move-result v7

    :goto_0
    invoke-virtual {p2, v7}, Lcom/aviary/android/feather/library/filters/MemeFilter;->setStrokeColor(I)V

    .line 263
    invoke-virtual {v1}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->getDefaultTextSize()F

    move-result v7

    div-float/2addr v7, v5

    float-to-double v9, v7

    invoke-virtual {p2, v9, v10}, Lcom/aviary/android/feather/library/filters/MemeFilter;->setTextSize(D)V

    .line 265
    iget-object v7, p0, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-ne v7, p1, :cond_3

    .line 266
    invoke-virtual {v1}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p2, v7}, Lcom/aviary/android/feather/library/filters/MemeFilter;->setTopText(Ljava/lang/String;)V

    .line 271
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/aviary/android/feather/effects/MemePanel;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 272
    iget-object v7, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v7}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate()V

    .line 275
    .end local v0    # "cropRect":Landroid/graphics/RectF;
    .end local v1    # "editable":Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;
    .end local v2    # "height":I
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "saveCount":I
    .end local v5    # "scale":F
    .end local v6    # "width":I
    :cond_1
    iget-object v7, p0, Lcom/aviary/android/feather/effects/MemePanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v7, v8, v8}, Lcom/aviary/android/feather/effects/MemePanel;->onPreviewChanged(Landroid/graphics/Bitmap;ZZ)V

    .line 276
    return-void

    .restart local v0    # "cropRect":Landroid/graphics/RectF;
    .restart local v1    # "editable":Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;
    .restart local v2    # "height":I
    .restart local v3    # "rect":Landroid/graphics/Rect;
    .restart local v4    # "saveCount":I
    .restart local v5    # "scale":F
    .restart local v6    # "width":I
    :cond_2
    move v7, v8

    .line 262
    goto :goto_0

    .line 267
    :cond_3
    iget-object v7, p0, Lcom/aviary/android/feather/effects/MemePanel;->bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-ne p1, v7, :cond_0

    .line 268
    invoke-virtual {v1}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p2, v7}, Lcom/aviary/android/feather/library/filters/MemeFilter;->setBottomText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getMatrixValues(Landroid/graphics/Matrix;)[F
    .locals 2
    .param p0, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 330
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 331
    .local v0, "values":[F
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 332
    return-object v0
.end method

.method private onAddBottomText()V
    .locals 17

    .prologue
    .line 369
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v8, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    .line 371
    .local v8, "image":Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;
    invoke-virtual {v8}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v12

    .line 372
    .local v12, "rect":Landroid/graphics/RectF;
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    div-double/2addr v1, v15

    double-to-int v14, v1

    .line 374
    .local v14, "textSize":I
    new-instance v13, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;

    const-string/jumbo v1, ""

    int-to-float v2, v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/effects/MemePanel;->mTypeface:Landroid/graphics/Typeface;

    const/4 v6, 0x0

    invoke-direct {v13, v1, v2, v4, v6}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;-><init>(Ljava/lang/String;FLandroid/graphics/Typeface;Z)V

    .line 375
    .local v13, "text":Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/aviary/android/feather/effects/MemePanel;->mTextColor:I

    invoke-virtual {v13, v1}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->setTextColor(I)V

    .line 376
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/aviary/android/feather/effects/MemePanel;->mTextStrokeEnabled:Z

    invoke-virtual {v13, v1}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->setStrokeEnabled(Z)V

    .line 377
    move-object/from16 v0, p0

    iget v1, v0, Lcom/aviary/android/feather/effects/MemePanel;->mTextStrokeColor:I

    invoke-virtual {v13, v1}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->setStrokeColor(I)V

    .line 378
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v13, v1, v2}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->setContentSize(FF)V

    .line 380
    new-instance v10, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v10}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 381
    .local v10, "metrics":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {v13, v10}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 383
    new-instance v1, Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v8}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getOverlayStyleId()I

    move-result v2

    invoke-direct {v1, v8, v2, v13}, Lcom/aviary/android/feather/widget/DrawableHighlightView;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;ILcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/aviary/android/feather/effects/MemePanel;->bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .line 384
    invoke-virtual {v8}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 386
    .local v3, "mImageMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v13}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->getIntrinsicHeight()I

    move-result v7

    .line 388
    .local v7, "cropHeight":I
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 389
    .local v9, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v9, v9}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 391
    const/4 v1, 0x4

    new-array v11, v1, [F

    const/4 v1, 0x0

    iget v2, v12, Landroid/graphics/RectF;->left:F

    aput v2, v11, v1

    const/4 v1, 0x1

    iget v2, v12, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v7

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/effects/MemePanel;->paddingBottom:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    aput v2, v11, v1

    const/4 v1, 0x2

    iget v2, v12, Landroid/graphics/RectF;->left:F

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v2, v4

    aput v2, v11, v1

    const/4 v1, 0x3

    iget v2, v12, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/effects/MemePanel;->paddingBottom:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    aput v2, v11, v1

    .line 392
    .local v11, "pts":[F
    invoke-static {v9, v11}, Lcom/aviary/android/feather/library/utils/MatrixUtils;->mapPoints(Landroid/graphics/Matrix;[F)V

    .line 394
    new-instance v5, Landroid/graphics/RectF;

    const/4 v1, 0x0

    aget v1, v11, v1

    const/4 v2, 0x1

    aget v2, v11, v2

    const/4 v4, 0x2

    aget v4, v11, v4

    const/4 v6, 0x3

    aget v6, v11, v6

    invoke-direct {v5, v1, v2, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 396
    .local v5, "cropRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/MemePanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "bitmap rect: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/MemePanel;->bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    sget-object v2, Lcom/aviary/android/feather/widget/DrawableHighlightView$AlignModeV;->Bottom:Lcom/aviary/android/feather/widget/DrawableHighlightView$AlignModeV;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->setAlignModeV(Lcom/aviary/android/feather/widget/DrawableHighlightView$AlignModeV;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/MemePanel;->bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/effects/MemePanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->setup(Landroid/content/Context;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 400
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/MemePanel;->bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v8, v1}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->addHighlightView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)Z

    .line 401
    return-void
.end method

.method private onAddTopText()V
    .locals 15

    .prologue
    .line 337
    iget-object v7, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v7, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    .line 339
    .local v7, "image":Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;
    invoke-virtual {v7}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v10

    .line 341
    .local v10, "rect":Landroid/graphics/RectF;
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    div-double/2addr v0, v13

    double-to-int v12, v0

    .line 343
    .local v12, "textSize":I
    new-instance v11, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;

    const-string/jumbo v0, ""

    int-to-float v1, v12

    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->mTypeface:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-direct {v11, v0, v1, v3, v5}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;-><init>(Ljava/lang/String;FLandroid/graphics/Typeface;Z)V

    .line 344
    .local v11, "text":Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;
    iget v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mTextColor:I

    invoke-virtual {v11, v0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->setTextColor(I)V

    .line 345
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mTextStrokeEnabled:Z

    invoke-virtual {v11, v0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->setStrokeEnabled(Z)V

    .line 346
    iget v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mTextStrokeColor:I

    invoke-virtual {v11, v0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->setStrokeColor(I)V

    .line 347
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->setContentSize(FF)V

    .line 349
    new-instance v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v7}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getOverlayStyleId()I

    move-result v1

    invoke-direct {v0, v7, v1, v11}, Lcom/aviary/android/feather/widget/DrawableHighlightView;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;ILcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;)V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .line 350
    invoke-virtual {v7}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 352
    .local v2, "mImageMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v11}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->getIntrinsicHeight()I

    move-result v6

    .line 354
    .local v6, "cropHeight":I
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 355
    .local v8, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v8, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 357
    const/4 v0, 0x4

    new-array v9, v0, [F

    const/4 v0, 0x0

    iget v1, v10, Landroid/graphics/RectF;->left:F

    aput v1, v9, v0

    const/4 v0, 0x1

    iget v1, v10, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->paddingTop:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    aput v1, v9, v0

    const/4 v0, 0x2

    iget v1, v10, Landroid/graphics/RectF;->right:F

    aput v1, v9, v0

    const/4 v0, 0x3

    iget v1, v10, Landroid/graphics/RectF;->top:F

    int-to-float v3, v6

    add-float/2addr v1, v3

    iget v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->paddingTop:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    aput v1, v9, v0

    .line 358
    .local v9, "pts":[F
    invoke-static {v8, v9}, Lcom/aviary/android/feather/library/utils/MatrixUtils;->mapPoints(Landroid/graphics/Matrix;[F)V

    .line 360
    new-instance v4, Landroid/graphics/RectF;

    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    const/4 v3, 0x2

    aget v3, v9, v3

    const/4 v5, 0x3

    aget v5, v9, v5

    invoke-direct {v4, v0, v1, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 362
    .local v4, "cropRect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    sget-object v1, Lcom/aviary/android/feather/widget/DrawableHighlightView$AlignModeV;->Top:Lcom/aviary/android/feather/widget/DrawableHighlightView$AlignModeV;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->setAlignModeV(Lcom/aviary/android/feather/widget/DrawableHighlightView$AlignModeV;)V

    .line 363
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/MemePanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->setup(Landroid/content/Context;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 365
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v7, v0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->addHighlightView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)Z

    .line 366
    return-void
.end method


# virtual methods
.method protected generateContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 182
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_content_meme:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected generateOptionView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 187
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_panel_meme:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onActivate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onActivate()V

    .line 131
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/MemePanel;->createTypeFace()V

    .line 133
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->setOnDrawableEventListener(Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;)V

    .line 134
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->setOnLayoutChangeListener(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/MemePanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 137
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->editTopButton:Lcom/aviary/android/feather/widget/AviaryButton;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->editBottomButton:Lcom/aviary/android/feather/widget/AviaryButton;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->editTopText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->editBottomText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->editTopText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 143
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->editBottomText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 145
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->clearButtonTop:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->clearButtonBottom:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/MemePanel;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/MemePanel;->contentReady()V

    .line 150
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 292
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "onClick"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 294
    if-nez p1, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 298
    .local v0, "id":I
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->editTopButton:Lcom/aviary/android/feather/widget/AviaryButton;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AviaryButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 299
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-nez v1, :cond_2

    .line 300
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/MemePanel;->onAddTopText()V

    .line 302
    :cond_2
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/effects/MemePanel;->onTopClick(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    goto :goto_0

    .line 304
    :cond_3
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->editBottomButton:Lcom/aviary/android/feather/widget/AviaryButton;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AviaryButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 305
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-nez v1, :cond_4

    .line 306
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/MemePanel;->onAddBottomText()V

    .line 308
    :cond_4
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/effects/MemePanel;->onTopClick(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    goto :goto_0

    .line 309
    :cond_5
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->clearButtonTop:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 310
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-direct {p0, v1}, Lcom/aviary/android/feather/effects/MemePanel;->clearEditView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 311
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-direct {p0, v1}, Lcom/aviary/android/feather/effects/MemePanel;->endEditView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    goto :goto_0

    .line 312
    :cond_6
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->clearButtonBottom:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-direct {p0, v1}, Lcom/aviary/android/feather/effects/MemePanel;->clearEditView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 314
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-direct {p0, v1}, Lcom/aviary/android/feather/effects/MemePanel;->endEditView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    goto :goto_0
.end method

.method public onClick(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V
    .locals 1
    .param p1, "view"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    .line 549
    if-eqz p1, :cond_0

    .line 550
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v0

    instance-of v0, v0, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    if-eqz v0, :cond_0

    .line 551
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/effects/MemePanel;->beginEditView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 555
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, 0x0

    .line 86
    invoke-super {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/MemePanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$id;->aviary_button1:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/widget/AviaryButton;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->editTopButton:Lcom/aviary/android/feather/widget/AviaryButton;

    .line 89
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/MemePanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$id;->aviary_button2:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/widget/AviaryButton;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->editBottomButton:Lcom/aviary/android/feather/widget/AviaryButton;

    .line 91
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/MemePanel;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$id;->aviary_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .line 92
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/MemePanel;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$id;->aviary_invisible_text_1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->editTopText:Landroid/widget/EditText;

    .line 93
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/MemePanel;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$id;->aviary_invisible_text_2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->editBottomText:Landroid/widget/EditText;

    .line 95
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/MemePanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$id;->aviary_clear_button1:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->clearButtonTop:Landroid/view/View;

    .line 96
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/MemePanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$id;->aviary_clear_button2:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->clearButtonBottom:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_TO_SCREEN:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setDisplayType(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)V

    .line 99
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setDoubleTapEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setScaleEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setScrollEnabled(Z)V

    .line 103
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/MemePanel;->createAndConfigurePreview()V

    .line 105
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    new-instance v1, Lcom/aviary/android/feather/effects/MemePanel$1;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/effects/MemePanel$1;-><init>(Lcom/aviary/android/feather/effects/MemePanel;)V

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setOnDrawableChangedListener(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;)V

    .line 123
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mPreview:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V

    .line 125
    return-void
.end method

.method public onDeactivate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDeactivate()V

    .line 156
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/effects/MemePanel;->endEditView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 157
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/effects/MemePanel;->endEditView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 159
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->setOnDrawableEventListener(Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;)V

    .line 160
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->setOnLayoutChangeListener(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;)V

    .line 162
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->editTopButton:Lcom/aviary/android/feather/widget/AviaryButton;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->editBottomButton:Lcom/aviary/android/feather/widget/AviaryButton;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->clearButtonTop:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->clearButtonBottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->editTopText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->editTopText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->editBottomText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->editBottomText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 170
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mCanvas:Landroid/graphics/Canvas;

    .line 175
    iput-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 176
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->clearOverlays()V

    .line 177
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDestroy()V

    .line 178
    return-void
.end method

.method public onDown(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V
    .locals 0
    .param p1, "view"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    .line 542
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    .line 217
    iget-object v2, p0, Lcom/aviary/android/feather/effects/MemePanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "onEditorAction"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 219
    if-eqz p1, :cond_1

    .line 220
    const/4 v2, 0x6

    if-eq p2, v2, :cond_0

    if-nez p2, :cond_1

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v1, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    .line 222
    .local v1, "image":Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;
    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getSelectedHighlightView()Lcom/aviary/android/feather/widget/DrawableHighlightView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 223
    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getSelectedHighlightView()Lcom/aviary/android/feather/widget/DrawableHighlightView;

    move-result-object v0

    .line 224
    .local v0, "d":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v2

    instance-of v2, v2, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    if-eqz v2, :cond_1

    .line 225
    invoke-direct {p0, v0}, Lcom/aviary/android/feather/effects/MemePanel;->endEditView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 231
    .end local v0    # "d":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    .end local v1    # "image":Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;
    :cond_1
    return v6
.end method

.method public onFocusChange(Lcom/aviary/android/feather/widget/DrawableHighlightView;Lcom/aviary/android/feather/widget/DrawableHighlightView;)V
    .locals 4
    .param p1, "newFocus"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;
    .param p2, "oldFocus"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onFocusChange"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 453
    if-eqz p2, :cond_0

    .line 454
    if-nez p1, :cond_0

    .line 455
    invoke-direct {p0, p2}, Lcom/aviary/android/feather/effects/MemePanel;->endEditView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 458
    :cond_0
    return-void
.end method

.method protected onGenerateResult()V
    .locals 7

    .prologue
    .line 192
    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->MEME:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-static {v3}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory;->get(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;)Lcom/aviary/android/feather/headless/filters/IFilter;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/filters/MemeFilter;

    .line 193
    .local v1, "filter":Lcom/aviary/android/feather/library/filters/MemeFilter;
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v3}, Lcom/aviary/android/feather/library/utils/MatrixUtils;->getScale(Landroid/graphics/Matrix;)[F

    move-result-object v3

    const/4 v4, 0x0

    aget v2, v3, v4

    .line 195
    .local v2, "scale":F
    iget v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->paddingTop:I

    int-to-double v3, v3

    float-to-double v5, v2

    div-double/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/aviary/android/feather/library/filters/MemeFilter;->setPaddingTop(D)V

    .line 196
    iget v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->paddingBottom:I

    int-to-double v3, v3

    float-to-double v5, v2

    div-double/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/aviary/android/feather/library/filters/MemeFilter;->setPaddingBottom(D)V

    .line 198
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->fontName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/aviary/android/feather/library/filters/MemeFilter;->setAssetFontName(Ljava/lang/String;)V

    .line 202
    :cond_0
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-eqz v3, :cond_1

    .line 203
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-direct {p0, v3, v1}, Lcom/aviary/android/feather/effects/MemePanel;->flattenText(Lcom/aviary/android/feather/widget/DrawableHighlightView;Lcom/aviary/android/feather/library/filters/MemeFilter;)V

    .line 206
    :cond_1
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-eqz v3, :cond_2

    .line 207
    iget-object v3, p0, Lcom/aviary/android/feather/effects/MemePanel;->bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-direct {p0, v3, v1}, Lcom/aviary/android/feather/effects/MemePanel;->flattenText(Lcom/aviary/android/feather/widget/DrawableHighlightView;Lcom/aviary/android/feather/library/filters/MemeFilter;)V

    .line 210
    :cond_2
    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/MemeFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .line 211
    .local v0, "actionList":Lcom/aviary/android/feather/headless/moa/MoaActionList;
    invoke-super {p0, v0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onGenerateResult(Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    .line 212
    return-void
.end method

.method public onLayoutChanged(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 630
    if-eqz p1, :cond_1

    .line 631
    iget-object v6, p0, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v6}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 632
    .local v1, "mImageMatrix":Landroid/graphics/Matrix;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/MemePanel;->getMatrixValues(Landroid/graphics/Matrix;)[F

    move-result-object v2

    .line 633
    .local v2, "matrixValues":[F
    iget-object v6, p0, Lcom/aviary/android/feather/effects/MemePanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v5, v6

    .line 634
    .local v5, "w":F
    iget-object v6, p0, Lcom/aviary/android/feather/effects/MemePanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v0, v6

    .line 635
    .local v0, "h":F
    const/4 v6, 0x0

    aget v3, v2, v6

    .line 637
    .local v3, "scale":F
    iget-object v6, p0, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-eqz v6, :cond_0

    .line 638
    iget-object v6, p0, Lcom/aviary/android/feather/effects/MemePanel;->topHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v6}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v4

    check-cast v4, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;

    .line 639
    .local v4, "text":Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;
    mul-float v6, v5, v3

    mul-float v7, v0, v3

    invoke-virtual {v4, v6, v7}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->setContentSize(FF)V

    .line 642
    .end local v4    # "text":Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;
    :cond_0
    iget-object v6, p0, Lcom/aviary/android/feather/effects/MemePanel;->bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-eqz v6, :cond_1

    .line 643
    iget-object v6, p0, Lcom/aviary/android/feather/effects/MemePanel;->bottomHv:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v6}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v4

    check-cast v4, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;

    .line 644
    .restart local v4    # "text":Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;
    mul-float v6, v5, v3

    mul-float v7, v0, v3

    invoke-virtual {v4, v6, v7}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->setContentSize(FF)V

    .line 647
    .end local v0    # "h":F
    .end local v1    # "mImageMatrix":Landroid/graphics/Matrix;
    .end local v2    # "matrixValues":[F
    .end local v3    # "scale":F
    .end local v4    # "text":Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;
    .end local v5    # "w":F
    :cond_1
    return-void
.end method

.method public onMove(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V
    .locals 0
    .param p1, "view"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    .line 545
    return-void
.end method

.method public onTopClick(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V
    .locals 4
    .param p1, "view"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/aviary/android/feather/effects/MemePanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onTopClick"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 322
    if-eqz p1, :cond_0

    .line 323
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v0

    instance-of v0, v0, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    if-eqz v0, :cond_0

    .line 324
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/effects/MemePanel;->beginEditView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 327
    :cond_0
    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->setEnabled(Z)V

    return-void
.end method
