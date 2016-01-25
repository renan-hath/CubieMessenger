.class Lcom/liquable/nemo/chat/ChattingActivity$6;
.super Landroid/os/AsyncTask;
.source "ChattingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->checkSDCardAvailableSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$6;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 538
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 539
    .local v2, "stat":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    mul-long v0, v3, v5

    .line 540
    .local v0, "bytesAvailable":J
    const-wide/32 v3, 0x100000

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 535
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "isSDCardAlmostFull"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 545
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$6;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->showMediaStateDetailBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$400(Lcom/liquable/nemo/chat/ChattingActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const-string/jumbo v1, "FULL"

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 550
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$6;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->showMediaStateDetailBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$400(Lcom/liquable/nemo/chat/ChattingActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$6;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->mediaMountStateTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$500(Lcom/liquable/nemo/chat/ChattingActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d0543

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 552
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$6;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->mediaMountStateTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$500(Lcom/liquable/nemo/chat/ChattingActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 535
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$6;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
