.class Lcom/liquable/nemo/message/view/PictureMessageOtherBigView$1;
.super Ljava/lang/Object;
.source "PictureMessageOtherBigView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;->initBubbleBody(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/liquable/nemo/message/view/PictureMessageOtherBigView$1;->this$0:Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/message/model/PictureMessage;

    .line 44
    .local v2, "message":Lcom/liquable/nemo/message/model/PictureMessage;
    if-nez v2, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 49
    .local v0, "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 50
    .local v1, "mediaFile":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    iget-object v3, p0, Lcom/liquable/nemo/message/view/PictureMessageOtherBigView$1;->this$0:Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;

    iget-object v3, v3, Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;->context:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->dispatchMediaMessageIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/DomainMessage;Ljava/io/File;)V

    goto :goto_0
.end method
