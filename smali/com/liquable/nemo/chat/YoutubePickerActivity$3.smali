.class Lcom/liquable/nemo/chat/YoutubePickerActivity$3;
.super Ljava/lang/Object;
.source "YoutubePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/YoutubePickerActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$3;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$3;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->youtubeListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$800(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/youtube/YoutubeVideo;

    .line 395
    .local v1, "youtubeVideo":Lcom/liquable/nemo/youtube/YoutubeVideo;
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$3;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->mode:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;
    invoke-static {v2}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1300(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/youtube/YoutubeVideo;->setVia(Ljava/lang/String;)V

    .line 396
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$3;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    invoke-static {v2, v1}, Lcom/liquable/nemo/chat/YoutubeSendActivity;->createIntent(Landroid/content/Context;Lcom/liquable/nemo/youtube/YoutubeVideo;)Landroid/content/Intent;

    move-result-object v0

    .line 398
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$3;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    sget-object v3, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_YOUTUBE:Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 399
    return-void
.end method
