.class Lcom/liquable/nemo/chat/ImageViewerActivity$6;
.super Landroid/os/AsyncTask;
.source "ImageViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ImageViewerActivity;->setTitle()V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ImageViewerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$6;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 608
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ImageViewerActivity$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 611
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$6;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    # invokes: Lcom/liquable/nemo/chat/ImageViewerActivity;->getTopic(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$200(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 612
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-nez v0, :cond_0

    .line 613
    const/4 v1, 0x0

    .line 615
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 608
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ImageViewerActivity$6;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 620
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$6;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 623
    :cond_0
    return-void
.end method
