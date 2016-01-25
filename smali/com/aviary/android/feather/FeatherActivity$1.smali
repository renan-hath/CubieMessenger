.class Lcom/aviary/android/feather/FeatherActivity$1;
.super Ljava/lang/Object;
.source "FeatherActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/FeatherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/FeatherActivity;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/FeatherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/FeatherActivity;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 452
    sget-object v2, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 454
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 507
    :goto_0
    return v1

    .line 456
    :sswitch_0
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mToolbar:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;
    invoke-static {v2}, Lcom/aviary/android/feather/FeatherActivity;->access$000(Lcom/aviary/android/feather/FeatherActivity;)Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->setClickable(Z)V

    goto :goto_0

    .line 460
    :sswitch_1
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mToolbar:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;
    invoke-static {v0}, Lcom/aviary/android/feather/FeatherActivity;->access$000(Lcom/aviary/android/feather/FeatherActivity;)Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->setClickable(Z)V

    goto :goto_0

    .line 464
    :sswitch_2
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mToolbar:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;
    invoke-static {v2}, Lcom/aviary/android/feather/FeatherActivity;->access$000(Lcom/aviary/android/feather/FeatherActivity;)Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->setClickable(Z)V

    .line 465
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
    invoke-static {v2}, Lcom/aviary/android/feather/FeatherActivity;->access$100(Lcom/aviary/android/feather/FeatherActivity;)Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    move-result-object v2

    invoke-virtual {v2, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setVisibility(I)V

    goto :goto_0

    .line 469
    :sswitch_3
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mToolsList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    invoke-static {v0}, Lcom/aviary/android/feather/FeatherActivity;->access$200(Lcom/aviary/android/feather/FeatherActivity;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setEnabled(Z)V

    .line 470
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mToolbar:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;
    invoke-static {v0}, Lcom/aviary/android/feather/FeatherActivity;->access$000(Lcom/aviary/android/feather/FeatherActivity;)Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->setClickable(Z)V

    .line 471
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mToolbar:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;
    invoke-static {v0}, Lcom/aviary/android/feather/FeatherActivity;->access$000(Lcom/aviary/android/feather/FeatherActivity;)Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->close()V

    .line 472
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mToolbar:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;
    invoke-static {v0}, Lcom/aviary/android/feather/FeatherActivity;->access$000(Lcom/aviary/android/feather/FeatherActivity;)Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->setSaveEnabled(Z)V

    .line 473
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mToolsList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    invoke-static {v0}, Lcom/aviary/android/feather/FeatherActivity;->access$200(Lcom/aviary/android/feather/FeatherActivity;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v0

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->requestFocus()Z

    goto :goto_0

    .line 477
    :sswitch_4
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mToolsList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    invoke-static {v2}, Lcom/aviary/android/feather/FeatherActivity;->access$200(Lcom/aviary/android/feather/FeatherActivity;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setEnabled(Z)V

    .line 478
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mToolbar:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;
    invoke-static {v2}, Lcom/aviary/android/feather/FeatherActivity;->access$000(Lcom/aviary/android/feather/FeatherActivity;)Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->setClickable(Z)V

    .line 479
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mToolbar:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;
    invoke-static {v2}, Lcom/aviary/android/feather/FeatherActivity;->access$000(Lcom/aviary/android/feather/FeatherActivity;)Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->setSaveEnabled(Z)V

    goto :goto_0

    .line 483
    :sswitch_5
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
    invoke-static {v0}, Lcom/aviary/android/feather/FeatherActivity;->access$100(Lcom/aviary/android/feather/FeatherActivity;)Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setVisibility(I)V

    goto :goto_0

    .line 487
    :sswitch_6
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mToolbar:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;
    invoke-static {v2}, Lcom/aviary/android/feather/FeatherActivity;->access$000(Lcom/aviary/android/feather/FeatherActivity;)Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    move-result-object v2

    iget-object v3, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    iget-object v3, v3, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v3}, Lcom/aviary/android/feather/AviaryMainController;->getActiveTool()Lcom/aviary/android/feather/library/content/ToolEntry;

    move-result-object v3

    iget v3, v3, Lcom/aviary/android/feather/library/content/ToolEntry;->labelResourceId:I

    invoke-virtual {v2, v3, v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->setTitle(IZ)V

    .line 488
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mToolbar:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;
    invoke-static {v0}, Lcom/aviary/android/feather/FeatherActivity;->access$000(Lcom/aviary/android/feather/FeatherActivity;)Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->open()V

    .line 492
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
    invoke-static {v0}, Lcom/aviary/android/feather/FeatherActivity;->access$100(Lcom/aviary/android/feather/FeatherActivity;)Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    move-result-object v0

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->resetMatrix()V

    goto/16 :goto_0

    .line 496
    :sswitch_7
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mToolbar:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;
    invoke-static {v0}, Lcom/aviary/android/feather/FeatherActivity;->access$000(Lcom/aviary/android/feather/FeatherActivity;)Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 500
    :sswitch_8
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mToolbar:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;
    invoke-static {v0}, Lcom/aviary/android/feather/FeatherActivity;->access$000(Lcom/aviary/android/feather/FeatherActivity;)Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->setTitle(I)V

    goto/16 :goto_0

    .line 504
    :sswitch_9
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity$1;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mToolbar:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;
    invoke-static {v2}, Lcom/aviary/android/feather/FeatherActivity;->access$000(Lcom/aviary/android/feather/FeatherActivity;)Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->setApplyVisible(Z)V

    goto/16 :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 454
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x64 -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
    .end sparse-switch
.end method
