.class Lcom/liquable/nemo/forum/ForumImagePreviewFragment$6;
.super Ljava/lang/Object;
.source "ForumImagePreviewFragment.java"

# interfaces
.implements Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$6;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWidgetClose(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V
    .locals 2
    .param p1, "widgetType"    # Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .prologue
    .line 311
    sget-object v0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$9;->$SwitchMap$com$liquable$nemo$chat$widget$ChattingWidget$Widget:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$6;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    const/4 v1, 0x0

    # invokes: Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->updateImage(Z)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->access$600(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;Z)V

    .line 321
    return-void

    .line 313
    :pswitch_0
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$6;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/SingleFragmentActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/SingleFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    .line 315
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$6;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    # getter for: Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->access$500(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$6;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    # getter for: Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->access$700(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/WidgetManager;->isSecret()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->open(Z)V

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onWidgetOpen(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V
    .locals 2
    .param p1, "widgetType"    # Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .prologue
    .line 325
    sget-object v0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$9;->$SwitchMap$com$liquable$nemo$chat$widget$ChattingWidget$Widget:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$6;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    const/4 v1, 0x0

    # invokes: Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->updateImage(Z)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->access$600(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;Z)V

    .line 334
    return-void

    .line 327
    :pswitch_0
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$6;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/SingleFragmentActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/SingleFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    .line 328
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$6;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    # getter for: Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->access$500(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->close()V

    goto :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
