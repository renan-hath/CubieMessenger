.class Lcom/liquable/nemo/chat/ChattingActivity$9;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->initEmojiWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$9;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 749
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$9;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const-class v2, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 750
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$9;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->MANAGE_CUSTOM_STICKER:Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 751
    return-void
.end method
