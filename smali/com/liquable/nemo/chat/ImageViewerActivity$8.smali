.class Lcom/liquable/nemo/chat/ImageViewerActivity$8;
.super Ljava/lang/Object;
.source "ImageViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ImageViewerActivity;->showShareToFacebookDialog(Lcom/liquable/nemo/message/model/IMediaMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

.field final synthetic val$mediaFile:Ljava/io/File;

.field final synthetic val$msg:Lcom/liquable/nemo/message/model/IMediaMessage;

.field final synthetic val$shareEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ImageViewerActivity;Lcom/liquable/nemo/message/model/IMediaMessage;Ljava/io/File;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$8;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    iput-object p2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$8;->val$msg:Lcom/liquable/nemo/message/model/IMediaMessage;

    iput-object p3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$8;->val$mediaFile:Ljava/io/File;

    iput-object p4, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$8;->val$shareEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 690
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$8;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$8;->val$msg:Lcom/liquable/nemo/message/model/IMediaMessage;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$8;->val$mediaFile:Ljava/io/File;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$8;->val$shareEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/liquable/nemo/chat/ImageViewerActivity;->shareToFacebook(Lcom/liquable/nemo/message/model/IMediaMessage;Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$1500(Lcom/liquable/nemo/chat/ImageViewerActivity;Lcom/liquable/nemo/message/model/IMediaMessage;Ljava/io/File;Ljava/lang/String;)V

    .line 691
    return-void
.end method
