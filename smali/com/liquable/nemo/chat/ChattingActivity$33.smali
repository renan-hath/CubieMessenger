.class Lcom/liquable/nemo/chat/ChattingActivity$33;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->popupShareToFacebookDialog(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;

.field final synthetic val$mediaFile:Ljava/io/File;

.field final synthetic val$shareEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;Ljava/io/File;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 2099
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$33;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iput-object p2, p0, Lcom/liquable/nemo/chat/ChattingActivity$33;->val$mediaFile:Ljava/io/File;

    iput-object p3, p0, Lcom/liquable/nemo/chat/ChattingActivity$33;->val$shareEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$33;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$33;->val$mediaFile:Ljava/io/File;

    const-string/jumbo v2, "message_long_click"

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$33;->val$shareEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->postFileToFacebook(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/liquable/nemo/chat/ChattingActivity;->access$3400(Lcom/liquable/nemo/chat/ChattingActivity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    return-void
.end method
