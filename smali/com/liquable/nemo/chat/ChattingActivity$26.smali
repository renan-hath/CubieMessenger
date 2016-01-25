.class Lcom/liquable/nemo/chat/ChattingActivity$26;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;

.field final synthetic val$activityRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$26;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iput-object p2, p0, Lcom/liquable/nemo/chat/ChattingActivity$26;->val$activityRootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 1433
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$26;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$26;->val$activityRootView:Landroid/view/View;

    .line 1434
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 1435
    .local v0, "heightDiff":I
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$26;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1437
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$26;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$900(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/WidgetManager;->closeMediaFromLayout()V

    .line 1445
    :goto_0
    return-void

    .line 1439
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$26;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1440
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$26;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$900(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/WidgetManager;->openMediaFromLayout()V

    goto :goto_0

    .line 1442
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$26;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$900(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/WidgetManager;->closeMediaFromLayout()V

    goto :goto_0
.end method
