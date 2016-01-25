.class Lcom/aviary/android/feather/effects/AbstractPanel$1;
.super Landroid/os/Handler;
.source "AbstractPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/AbstractPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/effects/AbstractPanel;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/AbstractPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/AbstractPanel;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 257
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 259
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 320
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 261
    :pswitch_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/AbstractPanel;->mListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnPreviewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    iget-object v3, v0, Lcom/aviary/android/feather/effects/AbstractPanel;->mListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnPreviewListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_1

    :goto_1
    invoke-interface {v3, v0, v1}, Lcom/aviary/android/feather/effects/AbstractPanel$OnPreviewListener;->onPreviewChange(Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 267
    :pswitch_2
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/AbstractPanel;->mListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnPreviewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/AbstractPanel;->mListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnPreviewListener;

    invoke-interface {v0}, Lcom/aviary/android/feather/effects/AbstractPanel$OnPreviewListener;->onPreviewUpdated()V

    goto :goto_0

    .line 273
    :pswitch_3
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/AbstractPanel;->mProgressListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/AbstractPanel;->mProgressListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnProgressListener;

    invoke-interface {v0}, Lcom/aviary/android/feather/effects/AbstractPanel$OnProgressListener;->onProgressStart()V

    goto :goto_0

    .line 279
    :pswitch_4
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/AbstractPanel;->mProgressListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/AbstractPanel;->mProgressListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnProgressListener;

    invoke-interface {v0}, Lcom/aviary/android/feather/effects/AbstractPanel$OnProgressListener;->onProgressEnd()V

    goto :goto_0

    .line 285
    :pswitch_5
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/AbstractPanel;->mProgressListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/AbstractPanel;->mProgressListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnProgressListener;

    invoke-interface {v0}, Lcom/aviary/android/feather/effects/AbstractPanel$OnProgressListener;->onProgressModalStart()V

    goto :goto_0

    .line 291
    :pswitch_6
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/AbstractPanel;->mProgressListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/AbstractPanel;->mProgressListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnProgressListener;

    invoke-interface {v0}, Lcom/aviary/android/feather/effects/AbstractPanel$OnProgressListener;->onProgressModalEnd()V

    goto/16 :goto_0

    .line 297
    :pswitch_7
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->setToolbarTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 301
    :pswitch_8
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->restoreToolbarTitle()V

    goto/16 :goto_0

    .line 305
    :pswitch_9
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->setPanelApplyStatusEnabled(Z)V

    goto/16 :goto_0

    .line 311
    :pswitch_a
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel$1;->this$0:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->setPanelApplyStatusEnabled(Z)V

    goto/16 :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_2
    .end packed-switch
.end method
