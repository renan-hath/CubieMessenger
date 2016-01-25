.class Lcom/liquable/nemo/forum/CreateBoardFragment$1;
.super Ljava/lang/Object;
.source "CreateBoardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/CreateBoardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/CreateBoardFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/CreateBoardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/CreateBoardFragment;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$1;->this$0:Lcom/liquable/nemo/forum/CreateBoardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0xfa

    const/4 v1, 0x1

    .line 109
    iget-object v0, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$1;->this$0:Lcom/liquable/nemo/forum/CreateBoardFragment;

    # invokes: Lcom/liquable/nemo/forum/CreateBoardFragment;->getTempBoardIcon()Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/forum/CreateBoardFragment;->access$000(Lcom/liquable/nemo/forum/CreateBoardFragment;)Ljava/io/File;

    move-result-object v7

    .line 110
    .local v7, "tempFile":Ljava/io/File;
    iget-object v0, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$1;->this$0:Lcom/liquable/nemo/forum/CreateBoardFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/CreateBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 115
    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v5

    move v2, v1

    move v4, v3

    move v6, v1

    .line 110
    invoke-static/range {v0 .. v7}, Lcom/liquable/nemo/util/crop/CropImageActivity;->createStartActivityIntent(Landroid/app/Activity;IIIILjava/lang/String;ZLjava/io/File;)Landroid/content/Intent;

    move-result-object v8

    .line 118
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$1;->this$0:Lcom/liquable/nemo/forum/CreateBoardFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Lcom/liquable/nemo/forum/CreateBoardFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 119
    return-void
.end method
