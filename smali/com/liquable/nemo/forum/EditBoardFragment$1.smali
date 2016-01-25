.class Lcom/liquable/nemo/forum/EditBoardFragment$1;
.super Ljava/lang/Object;
.source "EditBoardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/EditBoardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/EditBoardFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/EditBoardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/EditBoardFragment;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/liquable/nemo/forum/EditBoardFragment$1;->this$0:Lcom/liquable/nemo/forum/EditBoardFragment;

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

    .line 102
    iget-object v0, p0, Lcom/liquable/nemo/forum/EditBoardFragment$1;->this$0:Lcom/liquable/nemo/forum/EditBoardFragment;

    # invokes: Lcom/liquable/nemo/forum/EditBoardFragment;->getTempBoardIcon()Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/forum/EditBoardFragment;->access$000(Lcom/liquable/nemo/forum/EditBoardFragment;)Ljava/io/File;

    move-result-object v7

    .line 103
    .local v7, "tempFile":Ljava/io/File;
    iget-object v0, p0, Lcom/liquable/nemo/forum/EditBoardFragment$1;->this$0:Lcom/liquable/nemo/forum/EditBoardFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/EditBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 108
    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v5

    move v2, v1

    move v4, v3

    move v6, v1

    .line 103
    invoke-static/range {v0 .. v7}, Lcom/liquable/nemo/util/crop/CropImageActivity;->createStartActivityIntent(Landroid/app/Activity;IIIILjava/lang/String;ZLjava/io/File;)Landroid/content/Intent;

    move-result-object v8

    .line 111
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/liquable/nemo/forum/EditBoardFragment$1;->this$0:Lcom/liquable/nemo/forum/EditBoardFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Lcom/liquable/nemo/forum/EditBoardFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 112
    return-void
.end method
